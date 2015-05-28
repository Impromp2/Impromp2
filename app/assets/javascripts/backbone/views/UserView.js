var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.UserEditView = Backbone.View.extend({
  initialize: function(){
    // this.listenTo( this.model, "change", this.render);
    // this.listenTo( this.model, "destroy", this.render);
  },

  editTemplate: $('#edit-user-template').text(),

  events: {
    'submit': "update",
    'click #add-new-time': 'renderSliders'
  },

  render: function(){
    var html = Mustache.render(this.editTemplate, this.model.attributes);
    console.log(this.model.attributes);
    this.$el.append(html);
    var avails = Impromp2App.currentUser.attributes.availabilities;

    $("#add-new-time").on('click', function(){
     var day = $('#day').text();
     console.log(day);
     var template = $('#range-template').text().replace('replace', day);
     $('#slider-area').append(template);

     initiate();
   });

   $(".day-button").on('click', function(){
     $(this).siblings().removeClass('day-selected');
     $(this).addClass('day-selected');
     var day = $(this).val();
     $('#day').text(day);
     $("#slider-area").children().each(function(){
         if ($(this).hasClass(day)) {
           $(this).show();
       } else {
         $(this).hide();
       }
     });
   });

   $("#slider-area").on('click','.delete input', function(){
     $(this).parents('.slider-container').remove();
   });

   function sliderRender(val1, val2, day){
    var template = $('#range-template').text().replace('replace', day);
    $('#slider-area').append(template);
    initiate(val1, val2);
    sliderHider();
   }

   function sliderHider(){
    $("#slider-area").children().each(function(){
        if ($(this).hasClass('Sunday')) {
          $(this).show();
        } else {
          $(this).hide();
        }
     });
   }

   function initiate(val3, val4){

     $( ".slider-range").slider({
       range: true,
       min: 0,
       max: 24,
       create: function(){
         $( this ).slider( "values", [val3, val4] );
       },
        change: function( event, ui ) {
         console.log($( this ).slider( "instance" ).uuid);
         var num1 = $( this ).slider( "values", 0 );
         var num2 = $( this ).slider( "values", 1 );
         if(num1 > 12 ) {
           $( this ).find("#amount").text(num1 - 12 + " pm");
         } else if (num1 === 12){
           $( this ).find("#amount").text("12 pm");
         } else if (num1 === 0) {
           $( this ).find("#amount").text('12 am');
         } else {
           $( this ).find("#amount").text(num1 + " am");
         }
         if (num2 > 12 ){
           $(this).find( "#amount2" ).text((num2 - 12) + " pm");
         } else if (num2 === 12){
           $( this ).find("#amount2").text("12 pm");
         }else {
           $(this).find( "#amount2" ).text(num2 + " am");
         }
         console.log($( this ).slider( "values" ));
       }
     });
   }
   _.each(avails, function(e){
      sliderRender(e.start_time, e.end_time, e.day_of_the_week);
    });

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

    this.model.save();
  },

  renderSliders: function(){
    
  }
});

// Impromp2App.Views.UserAvailabilitiesView = Backbone.View.extend({
//   initialize: function(){
//     // this.listenTo( this.model, "change", this.render)
//     this.listenTo( this.model, "change", this.render);

//   },
//   availabilitiesTemplate: $("#edit-availabilities-template"),
//   render: function(){
//     // var html = Mustache.render(this.availabilitiesTemplate, this.model.attributes);
//     this.$el.append(this.availabilitiesTemplate);
//   }
// });

// Impromp2App.Views.UserCategoriesView = Backbone.View.extend({
//   initialize: function(){
//     // this.listenTo( this.model, "change", this.render)
//     this.listenTo( this.model, "change", this.render);
//   },
//   categoriesTemplate: $("#edit-categories-template").text(),
//   render: function(){
//     var html = Mustache.render(this.categoriesTemplate, this.model.attributes);
//     this.$el.append(html);
//   }
// });

