$(function(){
	function buildHtml(tech){
		var html = `<td><a href = /teches/${tech.slug}>${tech.name}</a></td>`
		return	html;
	}	
	$('#tech_form').on('submit', function(e) {
		e.preventDefault();
		var formData = new FormData(this);
		$.ajax({
			url: "/teches",
			type: "POST",
			data: formData,
			dataType: 'json',
			processData: false,
			contentType: false
		})
		.done(function(data){
			var html = buildHtml(data);
			$('.tech_list').append(html)
			$('.tech_text').val('')
		})
		.fail(function(data){
			alert('something went wrong, sorry')
		})
		.always(function(){
			$('.tech_submit').removeAttr("disabled")
		})
	})
});