// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require ./libraries/jquery-ui.min.js
//= require twitter/bootstrap
//= require turbolinks
//= require mustache

//= require ./libraries/underscore
//= require ./libraries/backbone
//= require ./libraries/moment

//= require ./backbone/app
//= require ./backbone/models/Event
//= require ./backbone/models/User
//= require ./backbone/models/Availability
//= require ./backbone/collections/EventCollection
//= require ./backbone/collections/AvailabilityCollection
//= require ./backbone/views/events/EventView
//= require ./backbone/views/events/EventListView
//= require ./backbone/views/UserView
