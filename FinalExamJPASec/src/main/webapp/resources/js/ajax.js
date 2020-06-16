var contextRoot = "/" + window.location.pathname.split('/')[1];

function addToFavorite() {

	$.ajax({
		url : 'addtoFavorite',
		type : 'GET',
		async : false,
<<<<<<< HEAD
		dataType : 'json',
		data : 'propertyId=' + 1,
		success : function(sucess) {
			alert("sucess")
			alert(sucess)
			$('#overlay').css('height', $(document.body).height() + 'px')
			$('#overlay').show()
			$('#dialog').html(
					"<p> successfully added to your favorite list </p>")
			centerMe('#dialog')
			$('#dialog').show();
=======
		dataType : 'html',
		data : 'propertyId=' + 111,
		success: function(){
			$('#errors').html("");
 			//$("#result").append( '<H2 align="center" color="green"> Sucessfully addded to your favorite list </H2>');   
 			$("#result").append( '<H2> Sucessfully addded to your favorite list </H2>');    
	 	    $('#result').show();
>>>>>>> 32fc98dc6e9e50526b20306d5af80144f20fb343
		},
		error: function(xhr, status, error) {
			$('#result').html("");
			//$("#errors").append( '<H3 align="center"> '+error.message+ '<H3>');  
			$("#errors").append( '<H2 align="center"> '+"An error occurred, please try again later"+ '</H2>');  
		  //  alert(error.message);
			$('#errors').show();
		 }

	})
}