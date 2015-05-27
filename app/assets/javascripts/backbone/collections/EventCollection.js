var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} };

Impromp2App.Collections.EventCollection = Backbone.Collection.extend({
  model: Impromp2App.Models.Event,
  url: 'api/events'
});