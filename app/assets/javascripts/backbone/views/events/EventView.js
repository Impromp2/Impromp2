var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, "change", this.render )
    this.listenTo( this.model, "destroy", this.remove );
  },
  
  tagName: 'tr',

  template: $('#event-template').html(),
  
  events: {
    // 'click [data-action="destroy"]' : 'destroyEvent',
    // 'click [data-action="edit"]' : 'renderEditForm'
  },
  
  render: function(){
    this.$el.empty();
    var renderedEvent = Mustache.render(this.template, this.model.attributes)
    this.$el.html(renderedEvent);

    return this
  },
  
  destroyEvent: function(e){
    e.preventDefault();
    this.model.destroy();
  }

});
