$(function () {

	function displayMessages(data) {
		let messages = []
		data.messages.forEach(function (message) {
			if (!message.user_id) {
			messages.push(`<div class="messageFromCompany"><p>${message.content}</p></div>`)
			} else {
			messages.push(`<div class="messageFromUser"><p>${message.content}</p></div>`)
			}
		})
		console.log(messages)
		return messages
		
	}
  let clickedElements = document.querySelectorAll('.jsChannelGet')
  clickedElements.forEach(function(element){
    element.addEventListener('click', (e) => {
    e.preventDefault();
    // jsInterestByUser.innerHTML = "Please wait..."
    let targetId = element.getAttribute('data-id');
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
  })
});