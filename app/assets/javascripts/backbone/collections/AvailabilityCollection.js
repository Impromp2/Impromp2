var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} };

Impromp2App.Collections.AvailabilityCollection = Backbone.Collection.extend({
  initialize: function(options){
    
  },
  model: Impromp2App.Models.Availability,
  url: function(){
   return 'api/availability';
  }
});