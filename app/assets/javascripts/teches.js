$(function(){
	function buildHtml(tech){
		
		var html = `<td><a href = /teches/${tech.id}>${tech.name}</a></td>`
		return	html;
	}	
	$('#tech_form').on('submit', function(e) {
		e.preventDefault();
		alert("agd");
		var formData = new FormData(this);
		alert(formData);
		$.ajax({
			url: "/teches",
			type: "POST",
			data: formData,
			dataType: 'json',
			processData: false,
			contentType: false
		})
		.done(function(data){
			alert("done");
			alert(buildHtml)
			var html = buildHtml(data);
			alert(html)
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