<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Add User</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>User registration success</h1>
				<p>Your have successfuly registerd a user<p>
			</div>
		</div>
	</section>
	<section class="container">
		<div>
			<p>${credential.username}</p>
			<p>${credential.password}</p>
			<p>${credential.email}</p>
		</div>
		<a href="login">Go to login page</a>
	</section>
</body>
</html>
