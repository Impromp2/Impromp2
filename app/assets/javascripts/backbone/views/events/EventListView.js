var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(modelFromCollection){
    var sortedEvents = _.groupBy(this.collection.models, function(event){
      return event.get('time'); 
    })

    _.each(sortedEvents, function(day,events){
        console.log(day, events);
    })


   // var newEventView = new Impromp2App.Views.EventView({model: modelFromCollection});
   // this.$el.append(newEventView.render().$el);
  }
});