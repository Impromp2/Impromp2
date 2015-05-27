var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    var self = this;
    this.$el.empty();
    _.each(this.collection.models, function(eventModel){
      var eventView = new Impromp2App.Views.EventView({model: eventModel})
      self.$el.append( eventView.render().el );
    })
  }
})
