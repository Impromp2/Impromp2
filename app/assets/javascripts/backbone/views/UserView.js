var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.UserEditView = Backbone.View.extend({
  initialize: function(){
    this.listenTo( this.model, "change", this.render);
    // this.listenTo( this.model, "destroy", this.render);
  },

  editTemplate: $('#edit-user-template').text(),

  events: {
    'submit': "update"
  },

  render: function(){
    Impromp2App.currentUser = new Impromp2App.Models.User();
    Impromp2App.currentUser.fetch();
    console.log(Impromp2App.currentUser);
    // this.$el.empty();
    var html = Mustache.render(this.editTemplate, this.model.attributes);
    this.$el.html(html);
  },

  update: function(e){
    e.preventDefault()
    // this.$el.html(this.editTemplate( this.model.attributes ));
    var first_name = this.$el.find('input[data-input="first_name"]').val();
    // var newName = nameField.val();
    // nameField.val('');
    // to test what 'this' is in the current scope
    this.model.set('first_name', first_name);
    // user: _.clone( this.attributes )
    this.model.save()
    // $.ajax({
    //   url: "/user",
    //   type: "PUT",
    //   dataType: "json",
    //   data: {
    //     'first_name' : first_name
    //   }
    // }).done(function(){
    //   console.log('hi')
    // })
    // self.model.save();

  }
});

