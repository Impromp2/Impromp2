var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.UserEditView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, "change", this.render);
    // this.listenTo( this.model, "destroy", this.render);
  },

  editTemplate: $('#edit-user-template').text(),

  events: {
    //placeholder for changing image modal
  },

  render: function(){
    // this.$el.empty();
    var html = Mustache.render(this.editTemplate, this.model.attributes);
    this.$el.html(html);
  }
});