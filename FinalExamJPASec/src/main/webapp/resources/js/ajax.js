var contextRoot = "/" + window.location.pathname.split('/')[1];

function addToFavorite(propertyId) {
alert ("propid= "+propertyId)
	$.ajax({
		url : contextRoot+'/addtoFavorite',
		type : 'GET',
		async : false,
		dataType : 'html',
		data : 'propertyId=' + propertyId,

		success : function(returnParam) {
			alert(returnParam);
			if (returnParam == "notLoggedIn") {
				alert("user notLoggedIn")
				$('#errors').html("");
				// $("#result").append( '<H2 align="center" color="green">
				// Sucessfully addded to your favorite list </H2>');
				$("#result").append(
						'<H2> please login to system </H2>');
				$('#result').show();
			} else {
				alert("sucess")
				$('#errors').html("");
				// $("#result").append( '<H2 align="center" color="green">
				// Sucessfully addded to your favorite list </H2>');
				$("#result").append(
						'<H2> Sucessfully addded to your favorite list </H2>');
				$('#result').show();
			}
		},

		error : function(xhr, status, error) {
			$('#result').html("");
			// $("#errors").append( '<H3 align="center"> '+error.message+
			// '<H3>');
			$("#errors").append(
					'<H2 align="center"> '
							+ "An error occurred, please try again later"
							+ '</H2>');
			// alert(error.message);
			$('#errors').show();
		}

	})
}