$(function () {
	jsInterestByUser.addEventListener('click', (e) => {
		e.preventDefault();
		jsInterestByUser.innerHTML = "Please wait..."
		$.ajax({
			url: "/interests",
			type: "POST",
			data: {
				project_id: $(`#jsInterestByUser`).val()
			},
			dataType: 'json'
		})
		.done(function (data) {
			jsInterestByUser.disabled = true
			document.getElementById('jsInterestByUser').innerHTML = 'Already Interest';
			$("#jsInterestByUser").removeClass("interest-button").addClass("u-disable-button");
			return
		})
		.fail(function (data) {
			alert('something went wrong, sorry')
			jsInterestByUser.innerHTML = "Interest!"
		})

	})
}
);