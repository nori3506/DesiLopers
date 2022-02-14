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
//= require jquery.min
//= require rails-ujs
//= require_tree .
//= require gritter
//= require bootstrap-sprockets

$(function () {
  setTimeout("$('.alert').fadeOut('linear')", 3000);
}); //= require serviceworker-companion

$(function () {
  $(".slider").slick({
    autoplay: true,
    autoplaySpeed: 2000,
    centerMode: true, //要素を中央寄せにする
    variableWidth: true,
    //Todo：以下のレスポンシブが効いてないきがする。
    responsive: [
      {
        breakpoint: 540,
        settings: {
          slidesToShow: 1,
        },
      },
    ],
  });
});

(function ($) {
  $.fn.toggleCSS3 = function () {
    var toggleCon = $(this).next();

    if (!toggleCon.hasClass("state-active")) {
      toggleCon.css("height", "auto");
      var h = toggleCon.innerHeight();
      toggleCon.css("height", 0);
      toggleCon.stop().velocity({ height: h }, 300, "easeInQuad");

      toggleCon.addClass("state-active");
    } else {
      toggleCon.stop().velocity({ height: 0 }, 300, "easeInQuad");

      toggleCon.removeClass("state-active");
    }
  };
})(jQuery);

$(function () {
  $(".hamburger").click(function () {
    $(this).toggleClass("active");

    if ($(this).hasClass("active")) {
      $(".globalMenuSp").addClass("active");
    } else {
      $(".globalMenuSp").removeClass("active");
    }
  });
});
