var contextRoot = "/" + window.location.pathname.split( '/' )[1];

function addToFavorite(){
	alert("ajax3 function");
	alert(contextRoot);
	$.ajax({
		url:'addtoFavorite',
		type:'GET',
		async:false,
		dataType:'json',
		data: 'propertyId='+112,
		success:function(){
			alert("sucess")
		    $('#overlay').css('height', $(document.body).height() + 'px')
		    $('#overlay').show()
		    $('#dialog').html("<p> successfully added to your favorite list </p>")
		    centerMe('#dialog')
		    $('#dialog').show();
		}
	
			
	})
}