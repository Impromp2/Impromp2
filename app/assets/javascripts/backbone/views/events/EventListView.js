var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.EventListView = Backbone.View.extend({
 initialize: function(){
   this.listenTo(this.collection, 'add', this.render);
 },
 sortEvents: function(){
    var sortedEvents = _.groupBy(this.collection.models, )

    return sortedEvents

 },
 render: function(modelFromCollection){


    _.each(sortedEvents, function(day,events){
        newEventView = 
    })


   var newEventView = new Impromp2App.Views.EventView({model: modelFromCollection});
   this.$el.append(newEventView.render().$el);
 }
});