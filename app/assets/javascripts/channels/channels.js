$(function () {
  $(document).on('turbolinks:load', function() {
    $('#messageDisplay').animate({scrollTop: $('#messageDisplay').scrollHeight}, 'normal');
  });

  function displayMessages(data) {
    let messages = []
    let isCompanyUser = channelArea.getAttribute('data-companyUser');
    if (isCompanyUser) {
      data.messages.forEach(function (message) {
        if (!message.user_id) {
          messages.push(`<div class="messageFromUser"><p>${message.content}</p></div>`)
        } else {
          messages.push(`<div class="messageFromCompany"><p>${message.content}</p></div>`)
        }
      })
    } else {
      data.messages.forEach(function (message) {
        if (!message.user_id) {
          messages.push(`<div class="messageFromCompany"><p>${message.content}</p></div>`)
        } else {
          messages.push(`<div class="messageFromUser"><p>${message.content}</p></div>`)
        }
      })
    }
		
		return messages
  }
  
  function addHiddenChannelId(data) {
    let hiddenHtml = `<input type="hidden" name="channel_id" value="${data.messages[0].channel_id}">`
    return hiddenHtml
  }

  let clickedElements = document.querySelectorAll('.jsChannelGet')
  clickedElements.forEach(function(element){
    element.addEventListener('click', (e) => {
      e.preventDefault();
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
        $('#MessageArea').addClass("messageAreaDisplay");
        $('#messageForm').append(addHiddenChannelId(data));  
      })
      .fail(function (data) {
        alert('something went wrong, sorry')
      })
    })
  })
});