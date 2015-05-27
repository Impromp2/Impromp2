var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} };
var eventCollection;

Impromp2App.initialize = function(){
  var eventCollection = new Impromp2App.Collections.EventCollection();

  var listView = new Impromp2App.Views.EventListView({
    collection: eventCollection,
    el: $('#events')
  });

  eventCollection.fetch();
}



$(function(){

  var Router = Backbone.Router.extend({

    routes: {
        '': 'index',
        'events': 'index',
        'create': 'create'
    },

    index: function(){
      Impromp2App.initialize();
    },

    create: function(){
      console.log("show route coming")
    }

})

  var myRouter = new Router()
  Backbone.history.start()

});
