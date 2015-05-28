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


  // availabilityCollection.fetch();

  // console.log(availabilityCollection);
  // Impromp2App.availabilities = Impromp2App.currentUser.attributes.availabilities;
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
            
      //checks if the page has been loaded. If not, runs the initialize function. (This prevents the eventListView from rendering twice)
  
    },

    new: function(){
      console.log("show route coming");
    },

    profile: function(){
      console.log('in profile route')
      $("#main-content").empty();

        var userEditView = new Impromp2App.Views.UserEditView({
          model: Impromp2App.currentUser,
          el: $('#main-content')
        });
        userEditView.render();


    

      // var userAvailabilitiesView = new Impromp2App.Views.UserAvailabilitiesView({
      //   model: Impromp2App.currentUser,
      //   el: $('#main-content')
      // });
      // userAvailabilitiesView.render();
      // var userCategoriesView = new Impromp2App.Views.UserCategoriesView({
      //   model: Impromp2App.currentUser,
      //   el: $('#main-content')
      // });
      // userCategoriesView.render();
    }

  });
  
  Impromp2App.currentUser = new Impromp2App.Models.User();
  var promise = Impromp2App.currentUser.fetch();
  
  promise.done(function(){
    var myRouter = new Router();
    Backbone.history.start();
  });

});
