$(function () {
	jsApplyByUser.addEventListener('click', (e) => {
		e.preventDefault();
		jsApplyByUser.innerHTML = "Please wait..."
		$.ajax({
			url: "/user_projects",
			type: "POST",
			data: {
				project_id: $(`#jsApplyByUser`).val()
			},
			dataType: 'json'
		})
			.done(function (data) {
				jsApplyByUser.disabled = true
				document.getElementById('jsApplyByUser').innerHTML = 'Already Applied';
				$("#jsApplyByUser").removeClass("interest-button").addClass("u-disable-button");
				return
			})
			.fail(function (data) {
				alert('something went wrong, sorry')
				jsApplyByUser.innerHTML = "Apply"
			})
	})
});