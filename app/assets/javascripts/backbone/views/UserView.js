var Impromp2App = Impromp2App || { Models: {}, Collection: {}, Views: {} };

Impromp2App.Views.UserEditView = Backbone.View.extend({
  initialize: function(){
    // this.listenTo( this.model, "change", this.render);
    // this.listenTo( this.model, "destroy", this.render);
  },

  editTemplate: $('#edit-user-template').text(),

  events: {
    'submit': 'update',
    'click #save-availabilities': 'saveAvailabilities'
  },

  render: function(){
    var html = Mustache.render(this.editTemplate, this.model.attributes);
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
         $( this ).slider( "values", [val3 || 0, val4 || 0] );
       },
        change: function( event, ui ) {
         // console.log($( this ).slider( "instance" ).uuid);
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

  saveAvailabilities: function(){
    var sliderTimesJSON = [];
    var sliderArray = $(".slider-range").toArray();
    _.each(sliderArray, function(e){
      sliderTimesObject = {};
      var sliderTimes = $(e).slider('values');
      sliderTimesObject.start_time = sliderTimes[0];
      sliderTimesObject.end_time = sliderTimes[1];
      var sliderDay = $(e).parent().attr('class').replace('slider-container ', '');
      sliderTimesObject.day_of_the_week = sliderDay;
      sliderTimesJSON.push(sliderTimesObject);
    });

    var string = "availability =" + JSON.stringify( sliderTimesJSON );

    $.ajax({
      url: '/api/availabilities',
      type: 'DELETE'
    }).done(function(data){
      console.log("deleted availabilities");
      $.ajax({
        url: '/api/availabilities',
        type: 'POST',
        // dataType: 'json',
        data: string
      }).done(function(data){
        console.log('saved availabilities');
      });
    });
  }

});
