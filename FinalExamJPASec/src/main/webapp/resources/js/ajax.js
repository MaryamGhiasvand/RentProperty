var contextRoot = "/" + window.location.pathname.split( '/' )[1];

function addToFavorite(){

	$.ajax({
		url:'addtoFavorite',
		type:'GET',
		async:false,
		dataType:'json',
		data: 'propertyId='+111,
		success:function(sucess){
			alert("sucess")
			alert(sucess)
		    $('#overlay').css('height', $(document.body).height() + 'px')
		    $('#overlay').show()
		    $('#dialog').html("<p> successfully added to your favorite list </p>")
		    centerMe('#dialog')
		    $('#dialog').show();
		},
	error:function(){
		alert("error")
	}
	
			
	})
}