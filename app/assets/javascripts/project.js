$(function(){
  $('.js-first-form-button').on('click', function(e) {
    e.preventDefault();
    $('.project-form__first .project-form__second .project-form__third').css({
      'transform': 'translateY(480px)',
      'transition-duration': '2s'
    })
    $('.project-form__first').css({
      'display': 'none',
    })
    $('.project-form__second').css({
      'display': 'block',
    })
  })

  $('.js-second-form-back').on('click', function(e) {
    e.preventDefault();
    $('.project-form__first .project-form__second .project-form__third').css({
      'transform': 'translateY(-480px)',
      'transition-duration': '1s'
    })
    $('.project-form__first').css({
      'display': 'block',
    })
    $('.project-form__second').css({
      'display': 'none',
    })
  })

  $('.js-second-form-button').on('click', function(e) {
    e.preventDefault();
    $('.project-form__first .project-form__second .project-form__third').css({
      'transform': 'translateY(480px)',
      'transition-duration': '2s'
    })
    $('.project-form__second').css({
      'display': 'none',
    })
    $('.project-form__third').css({
      'display': 'block',
    })
  })

  $('.js-third-form-back').on('click', function(e) {
    e.preventDefault();
    $('.project-form__first .project-form__second .project-form__third').css({
      'transform': 'translateY(-480px)',
      'transition-duration': '1s'
    })
    $('.project-form__second').css({
      'display': 'block',
    })
    $('.project-form__third').css({
      'display': 'none',
    })
  })
});