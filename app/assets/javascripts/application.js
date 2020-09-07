// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs
//= require_tree .
//= require gritter
//= require bootstrap-sprockets 

$(function(){
  setTimeout("$('.alert').fadeOut('linear')", 3000) 
})//= require serviceworker-companion

$(function() {
  $('.slider').slick({
    autoplay: true,
    autoplaySpeed: 3000,

    responsive:[
      {
        breakpoint: 1500,
        settings:{
          slidesToScroll: 1,
          centerMode: true,
          centerPadding: '170px',
          focusOnSelect:true,
        }
      },
      {
        breakpoint: 768,
        settings:{
          centerPadding: '110px',
          slidesToShow:2,
        }
      },
      {
        breakpoint: 500,
        settings:{
            slidesToShow:1,
        }
      },
    ]
  });
});