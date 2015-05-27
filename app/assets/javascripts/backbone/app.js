var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} };
var eventCollection;

Impromp2App.initialize = function(){
  var eventCollection = new Impromp2App.Collections.EventCollection();
  var listView = new Impromp2App.Views.EventListView({
    collection: eventCollection,
    el: $('#events')
  });

  Impromp2App.currentUser = new Impromp2App.Models.User();
  Impromp2App.currentUser.fetch();
  eventCollection.fetch();
};



$(function(){

  var Router = Backbone.Router.extend({

    routes: {
      '': 'index',
      'events': 'index',
      'events/new': 'new',
      'users/profile': 'profile'
    },

    index: function(){
      // $('#main-content').empty();
      Impromp2App.initialize();
    },

    new: function(){
      console.log("show route coming");
    },

    profile: function(){
      console.log("profile will go here");
      // $('#main-content').empty();
    }
  });

  var myRouter = new Router();
  Backbone.history.start();
});
