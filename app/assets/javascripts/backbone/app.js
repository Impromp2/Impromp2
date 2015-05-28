var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} };


var eventCollection;

Impromp2App.initialize = function(){

  console.log('app initialized');
  var eventCollection = new Impromp2App.Collections.EventCollection();
  // var availabilityCollection = new Impromp2App.Collections.AvailabilityCollection();
  var listView = new Impromp2App.Views.EventListView({
    collection: eventCollection,
    el: $('#main-content')
  });
<<<<<<< HEAD
=======

  var promise = eventCollection.fetch();
  promise.done(function(){
    console.log('events fetched')
  })
  // availabilityCollection.fetch();

  // console.log(availabilityCollection);
  // Impromp2App.availabilities = Impromp2App.currentUser.attributes.availabilities;
>>>>>>> 96b2d96e7a8e569809eafcba776ccdfc178aeb28
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
