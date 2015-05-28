var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.UserEditView = Backbone.View.extend({
  initialize: function(){
    // this.listenTo( this.model, "change", this.render);
    // this.listenTo( this.model, "destroy", this.render);
  },

  editTemplate: $('#edit-user-template').text(),

  events: {
    'submit': "update"
  },

  render: function(){
    var html = Mustache.render(this.editTemplate, this.model.attributes);
    console.log(this.model.attributes);
    this.$el.append(html);
  },

  update: function(e){
    e.preventDefault();
    var first_name = this.$el.find('input[data-input="first_name"]').val();
    var last_name = this.$el.find('input[data-input="last_name"]').val();
    var image_url = this.$el.find('input[data-input="image_url"]').val();
    var zipcode = this.$el.find('input[data-input="zipcode"]').val();
    var email = this.$el.find('input[data-input="email"]').val();

    this.model.set('first_name', first_name);
    this.model.set('last_name', last_name);
    this.model.set('image_url', image_url);
    this.model.set('zipcode', zipcode);
    this.model.set('email', email);
  }
});

Impromp2App.Views.UserAvailabilitiesView = Backbone.View.extend({
  initialize: function(){
    // this.listenTo( this.model, "change", this.render)
    this.listenTo( this.model, "change", this.render);

  },
  availabilitiesTemplate: $("#edit-availabilities-template"),
  render: function(){
    // var html = Mustache.render(this.availabilitiesTemplate, this.model.attributes);
    this.$el.append(this.availabilitiesTemplate);
  }
});

Impromp2App.Views.UserCategoriesView = Backbone.View.extend({
  initialize: function(){
    // this.listenTo( this.model, "change", this.render)
    this.listenTo( this.model, "change", this.render);
  },
  categoriesTemplate: $("#edit-categories-template").text(),
  render: function(){
    var html = Mustache.render(this.categoriesTemplate, this.model.attributes);
    this.$el.append(html);
  }
});

