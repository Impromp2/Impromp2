var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} };

var eventCollection;

Impromp2App.initialize = function(){
  var eventCollection = new Impromp2App.Collections.EventCollection();
  var listView = new Impromp2App.Views.EventListView({
        collection: eventCollection,
        el: $('#main-content')
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
      //checks if the page has been loaded. If not, runs the initialize function. (This prevents the eventListView from rendering twice)
  
      $('#main-content').empty()
      Impromp2App.initialize();
    },

    new: function(){
      // Impromp2App.initialize();
      console.log("show route coming");
    },

    profile: function(){

      // Impromp2App.initialize();
      console.log("profile will go here");
        // $('#main-content').empty();
        var userEditView = new Impromp2App.Views.UserEditView({
            model: Impromp2App.currentUser,
            el: $('#main-content')
          });
        console.log(userEditView)
        $("#main-content").empty()
        userEditView.render()
    }

  });


  var myRouter = new Router();
  Backbone.history.start();
});
