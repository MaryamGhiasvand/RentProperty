<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
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
				<h1>User registration</h1>
				<p>Please enter your details<p>
			</div>
		</div>
	</section>
	<!--  
	<section class="container">
		<form:form  modelAttribute="credential" class="form-horizontal" action="add" method="post">
			<fieldset>
				<legend>New user</legend>

				<form:errors path="*" cssClass="alert alert-danger" element="div"/>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="username"> Username</label>
					<div class="col-lg-10">
						<form:input id="username" path="username" class="form:input-large"/>
						<form:errors path="username" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="password">Password</label>
					<div class="col-lg-10">
						<form:input id="password" path="password" type="text" class="form:input-large"/>
						<form:errors path="password" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="email">Email</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="email" path="email" type="text" class="form:input-large"/>
							<form:errors path="email" cssClass="text-danger"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="firstName">Firstname</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="firstName" path="firstName" type="text" class="form:input-large"/>
							<form:errors path="firstName" cssClass="text-danger"/>
						</div>
					</div>
				</div>
								<div class="form-group">
					<label class="control-label col-lg-2" for="lastName">Lastname</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="lastName" path="lastName" type="text" class="form:input-large"/>
							<form:errors path="lastName" cssClass="text-danger"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="phone">Phone</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="phone" path="phone" type="text" class="form:input-large"/>
							<form:errors path="phone" cssClass="text-danger"/>
						</div>
					</div>
				</div>
								
 				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>-->
</body>
</html>
s