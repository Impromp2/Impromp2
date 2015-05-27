var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.UserEditView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, "change", this.render);
    // this.listenTo( this.model, "destroy", this.render);
  },

  editTemplate: $('#edit-user-template').text(),

  events: {
    'submit #button': "update"
  },

  render: function(){
    Impromp2App.currentUser = new Impromp2App.Models.User();
    Impromp2App.currentUser.fetch();
    console.log(Impromp2App.currentUser);
    // this.$el.empty();
    var html = Mustache.render(this.editTemplate, this.model.attributes);
    this.$el.html(html);
  },

  update: function(){
    this.set('first_name', 'params[:first_name]')
  }
});

