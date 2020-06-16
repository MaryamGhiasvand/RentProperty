<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Welcome</title>

<!-- add to favorite -->
<style type="text/css">@import url("<spring:url value="/resource/css/styples.css"/>");</style>
<script type="text/javascript" src="<spring:url value="/resource/js/ajax.js"/>"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- add to favorite -->

</head>
<body>
	<section>

		<div class="jumbotron">
			<div class="container">
				<img src="<spring:url value='/resource/images/loneRanger.jpg' />" />
				<h1>${greeting}</h1>
				<p>${tagline}</p>
			</div>

			<div class="container">

		<form:form method="get" action="search">
			<select name="type">
				<option>Type1</option>
				<option>Type2</option>
				<option>Type3</option>
			</select>
			<input type="text" name="city" />
			<input type="text" name="max" />
			<input type="text" name="min" />
			<input type="submit" value="search" />
		</form:form>
		
		<a href="credential/add" >Register</a>
				<security:authorize access="isAnonymous()">
					<!-- WHICH ONE? depends on basic form OR CUSTOM -->
					<!--a href="<spring:url value='/spring_security_login' />" class="btn btn-default pull-right"> Login</a-->
					<a href="<spring:url value='/login' />"
						class="btn btn-default pull-right"> Login</a>
				</security:authorize>

				<p>
					<security:authorize access="isAuthenticated()">
						<spring:url value="/logout" var="logout_url" />
						<form:form action="${logout_url}" class="form-horizontal"
							method="POST">
							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<input type="submit" id="btnAdd"
										class="btn btn-danger btn-mini  pull-right" value="Logout" />
								</div>
							</div>
						</form:form>
					</security:authorize>



					<a href="<spring:url value='/employees/list' />"
						class="btn btn-default"> <span
						class="glyphicon-hand-left glyphicon"></span> Go to Company
					</a>
					<p>for Maryam </p>
	<%-- <input type="button" value="Add to favorite" onclick="addToFavorite('${Property.id}')" /> --%>
	<input type="button" value="Add to favorite" onclick="addToFavorite()" />
	    	<div id="result" style="display:none" >   	
    	    <p id="success" > 
    
    		</p> 
    		<p id="errors" > 
    
    		</p>
    	</div>
	<p>for Maryam </p>
	
			</div>
		</div>
		
	<!-- Add to favorite --> 

	</section>
	
</body>
</html>
