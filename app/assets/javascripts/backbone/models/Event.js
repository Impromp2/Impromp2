var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Models.Event = Backbone.Model.extend({
  initialize: function(){
    console.log("Event created :(");
  },
  defaults:{
    // name: ''
  }
});