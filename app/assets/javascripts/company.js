$(function(){
	$('.js-first-form-button').on('click', function(e) {
		e.preventDefault();
		$('.company-form__first .company-form__second .company-form__third').css({
			'transform': 'translateY(480px)',
			'transition-duration': '2s'
		})
		$('.company-form__first').css({
			'display': 'none',
		})
		$('.company-form__second').css({
			'display': 'block',
		})
	})

	$('.js-second-form-back').on('click', function(e) {
		e.preventDefault();
		$('.company-form__first .company-form__second .company-form__third').css({
			'transform': 'translateY(-480px)',
			'transition-duration': '1s'
		})
		$('.company-form__first').css({
			'display': 'block',
		})
		$('.company-form__second').css({
			'display': 'none',
		})
	})

	$('.js-second-form-button').on('click', function(e) {
		e.preventDefault();
		$('.company-form__first .company-form__second .company-form__third').css({
			'transform': 'translateY(480px)',
			'transition-duration': '2s'
		})
		$('.company-form__second').css({
			'display': 'none',
		})
		$('.company-form__third').css({
			'display': 'block',
		})
	})

	$('.js-third-form-back').on('click', function(e) {
		e.preventDefault();
		$('.company-form__first .company-form__second .company-form__third').css({
			'transform': 'translateY(-480px)',
			'transition-duration': '1s'
		})
		$('.company-form__second').css({
			'display': 'block',
		})
		$('.company-form__third').css({
			'display': 'none',
		})
	})
});