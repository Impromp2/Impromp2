var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} };


var eventCollection;

Impromp2App.initialize = function(){

  
};


$(function(){
  var Router = Backbone.Router.extend({
    initialize: function(){
      $('#main-content').empty();
      Impromp2App.initialize();
    },

    routes: {
      '': 'index',
      'events': 'index',
      'events/new': 'new',
      'users/profile': 'profile'
    },

    index: function(){
      $("#main-content").empty();
      console.log('app initialized');
      var eventCollection = new Impromp2App.Collections.EventCollection();
      var listView = new Impromp2App.Views.EventListView({
        collection: eventCollection,
        el: $('#main-content')
      });

      var promise = eventCollection.fetch();
      promise.done(function(){
        console.log('events fetched');
      });
    },

    // new: function(){
    //   console.log("show route coming");
    // },

    profile: function(){
      console.log('in profile route');
      $("#main-content").empty();

      var userEditView = new Impromp2App.Views.UserEditView({
        model: Impromp2App.currentUser,
        el: $('#main-content')
      });
      userEditView.render();
    }

  });
  
  Impromp2App.currentUser = new Impromp2App.Models.User();
  var promise = Impromp2App.currentUser.fetch();
  
  promise.done(function(){
    var myRouter = new Router();
    Backbone.history.start();
  });

});
