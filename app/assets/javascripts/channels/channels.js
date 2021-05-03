$(function () {

	function displayMessages(data) {
		let messages = []
		data.messages.forEach(function (message) {
			console.log(message.user_id)
			if (!message.user_id) {
			messages.push(`<div class="messageFromCompany"><p>${message.content}</p></div>`)
			} else {
			messages.push(`<div class="messageFromUser"><p>${message.content}</p></div>`)
			}
		})
		console.log(messages)
		return messages
		
	}

  jsChannelGet.addEventListener('click', (e) => {
    e.preventDefault();
    // jsInterestByUser.innerHTML = "Please wait..."
		let targetId = $('#jsChannelGet').data('id');
    $.ajax({
      url: `/api/v1/channels/${targetId}`,
      type: "get",
      data: {
      	channel_id: targetId
      },
      dataType: 'json'
    })
    .done(function (data) {
	 		$('#messageDisplay').empty().append(displayMessages(data))

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
});