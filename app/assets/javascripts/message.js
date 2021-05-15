$(function () {
	let isCompanyUser = channelArea.getAttribute('data-companyUser');

	function displayMessages(data) {
		let messages = []
		if (isCompanyUser) {
			if (!data.message.user_id) {
				messages.push(`<div class="messageFromUser"><p>${data.message.content}</p></div>`)
			} else {
				messages.push(`<div class="messageFromCompany"><p>${data.message.content}</p></div>`)
			}
		} else {
			if (!data.message.user_id) {
				messages.push(`<div class="messageFromCompany"><p>${data.message.content}</p></div>`)
			} else {
				messages.push(`<div class="messageFromUser"><p>${data.message.content}</p></div>`)
			}
		}
		
		return messages
  }
  
	const submitBtn = document.getElementById('messageSendBtn');
	submitBtn.addEventListener('click', (e) => {
		const messageForm = document.getElementById('messageForm');
		e.preventDefault();
		submitBtn.textContent = 'Sending...';
		submitBtn.disabled = true;
    let formData = new FormData(messageForm);

    $.ajax({
      url: `/api/messages`,
      type: "post",
      data: formData,
			dataType: 'json',
	    processData: false,
      contentType: false
    })
		.done(function (data) {
			$('#messageTextArea').val("");
			submitBtn.textContent = 'Send';
			submitBtn.disabled = false;

      $('#messageDisplay').append(displayMessages(data))
    })
    .fail(function (data) {
      alert('something went wrong, sorry')
      // jsInterestByUser.innerHTML = "Interest!"
    })
  })
});