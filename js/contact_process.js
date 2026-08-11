$(function(){
	$('#contact_form').submit(function(e){
		e.preventDefault();
		var form = $(this);
		var post_url = form.attr('action');
		var post_data = form.serialize();
			
			$('#button').css('display','none');
			$('#errors').css('display','none');
			$('#loader').css('display','block');
			
			

			$.ajax({
				url: '../ajax/contact_process.php', 
				type: 'POST',
				data: post_data,
				dataType: 'json', 
				success: function(data) {
					if (data.ok==false){
						$('#errors', form).html(data.msg);
						$('#loader').css('display','none');
						$('#button').css('display','block');
						$('#errors').css('display','block');
					}
					else {
						$("#form_container").hide('slow').after("<div class='alertbox'><h4>Thank you for your inquiry!</h4><p>We have received your message and will reply to you shortly.</p></div>");
					}
					
					

				},
				error: function()
		    	{
			    	$('#errors').css('display','block');
		        	$('#errors', form).html("There was a problem sending your email.");
		      	} 
			});
		
	});
});