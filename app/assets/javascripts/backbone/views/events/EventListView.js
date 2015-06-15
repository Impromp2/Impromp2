var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(){
    this.$el.empty();
    var sortedEvents = _.groupBy(this.collection.models, function(event){
      // debugger
      // return event.get('time'); 
      return moment(event.get('time')).format('MMM D YYYY');
    })

    var that = this;
    _.each(sortedEvents, function(events, day){
        // console.log(day, events);

        var newEventView = new Impromp2App.Views.EventView({day: day, events: events});
        that.$el.append(newEventView.render().$el);
    })
  }
});