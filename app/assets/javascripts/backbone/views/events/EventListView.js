var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  // render: function(){
  //   var self = this;
  //   this.$el.empty();
  //   console.log(this.collection.models)
  //   _.each(this.collection.models, function(eventModel){
  //     var eventView = new Impromp2App.Views.EventView({model: eventModel})
  //     // console.log(eventModel);
  //     self.$el.append( eventView.render().el );
  //   })
  // }
  render: function(modelFromCollection){
      console.log(modelFromCollection);
      var newEventView = new Impromp2App.Views.EventView({model: modelFromCollection});
      newEventView.render();
      console.log(newEventView.render());
      this.$el.append(newEventView.$el);
  }
})
