var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventView = Backbone.View.extend({
  initialize: function(options){
    this.listenTo( this.model, "change", this.render )
    this.listenTo( this.model, "destroy", this.remove );
    this.day = options.day;
    this.events = options.events;
  },

  template: $('#event-template').html(),
  
  events: {
    // 'click [data-action="destroy"]' : 'destroyEvent',
    // 'click [data-action="edit"]' : 'renderEditForm'
  },
  
  render: function(){
    console.log(this.events[0].attributes)
    // this.$el.empty();

    var day = moment(this.day).format('dddd');
    var daydesc = moment(this.day).format('MMM Do YYYY');
    var events = this.events;
    // this.model.attributes
    var eventObjects = events.map(function(event){
      return event.attributes;
    })

    var renderedEvent = Mustache.render(this.template, {day: day, daydesc: daydesc, events: eventObjects});
    // debugger
    this.$el.html(renderedEvent);

    return this;
  },
  
  destroyEvent: function(e){
    e.preventDefault();
    this.model.destroy();
  }

});
