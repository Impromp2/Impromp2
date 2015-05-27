var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };



Impromp2App.Models.User = Backbone.Model.extend({
  initialize: function(){
    console.log("A user exists for to make the purpose of to edit.");
  },
  urlRoot: "/user",
  sync: function(method, model, options) {
        options || (options = {});
        switch (method) {
          case "read":
            options.url = "/user";
            console.log(options);
            return Backbone.sync(method, model, options);
        }
  }
});



