$(function () {

	$('#select_condition').on('change', function (e) {
		let selected_status = $('#selected_status option:selected').val();
		let subjected_user_id = $('#subjected_user_id').val();
		let subjected_user_projects = $('#subjected_user_projects');

		$.ajax({
				url: `/api/v1/users/${subjected_user_id}`,
				type: "PATCH",
				data: {
					status: selected_status
				},
				dataType: 'json'
			})
			.done(function (data) {
				alert("aa")
				// jsInterestByUser.disabled = true
				// document.getElementById('jsInterestByUser').innerHTML = 'Already Interest';
				// $("#jsInterestByUser").removeClass("interest-button").addClass("u-disable-button");
				return
			})
			.fail(function (data) {
				alert('something went wrong, sorry')
				// jsInterestByUser.innerHTML = "Interest!"
			})
	})
})