<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Dashboard</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Dashboard</h1>
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
				<p>
			</div>
		</div>
	</section>
	<section class="container">
		<div>
			<a href="credential/edit" >Edit Profile</a>
			<p>${credential.username}</p>
			<p>${credential.email}</p>
		</div>

		<div>
			<p><a href="properties/list">My properties</a></p>
			<p><a href="properties/add">Add new property</a>
		</div>
	</section>
</body>
</html>
