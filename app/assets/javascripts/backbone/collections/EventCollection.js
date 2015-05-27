var Impromp2App = Impromp2App || { Models: {}, Collections: {}, Views: {} }

Impromp2App.Collections.EventCollection = Backbone.Collection.extend({
  initialize: function(options){
    this.today = moment().format('YYYYMMDD');
    this.endWeek = moment().add(7,'days').format('YYYYMMDD');
  },
  model: Impromp2App.Models.Event,
  url: function(){
   return 'api/events?start=' + this.today + '&end=' + this.endWeek;
  }
});