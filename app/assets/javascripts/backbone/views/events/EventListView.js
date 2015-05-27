var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventListView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.collection, 'add', this.render);
  },
  render: function(modelFromCollection){
      this.$el.empty();
      var newEventView = new Impromp2App.Views.EventView({model: modelFromCollection});
      this.$el.append(newEventView.render().$el);
  }
})
