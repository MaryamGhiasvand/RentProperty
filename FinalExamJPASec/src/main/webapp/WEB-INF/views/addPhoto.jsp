<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Products</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Valued Property</h1>
			</div>
		</div>
	</section>
	<section class="container">
		  <form:form modelAttribute="newPhoto" action="addPhoto" method="post" enctype="multipart/form-data">
		  <input type="file" name="fileUpload" size="50" />
            
            <div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Save"/>
					</div>
				</div>
        </form:form>
	</section>
</body>
</html>
