var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };



Impromp2App.Models.User = Backbone.Model.extend({
  initialize: function(){
    console.log("A user exists for to make the purpose of to edit.");
  },
  urlRoot: "/user",
  toJSON: function() {
    var string = JSON.stringify( _.clone( this.attributes ));
    return "user =" + string;
  },
  sync: function(method, model, options) {
    options || (options = {});
    switch (method) {
      case "read":
        options.url = "/user";
        return Backbone.sync(method, model, options);
      break;
      case "update":
        options.data = this.toJSON();
        options.dataType = "json",
        console.log(options.data);
        options.method = "PUT";
        options.url = "/user";
        return Backbone.sync(method, model, options);
      break;
    }
  }
});



