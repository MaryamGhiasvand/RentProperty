<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<section>
		<div class="jumbotron">
			<div class="container">
				<h1>New Property</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="newProperty" action="add" method="post">
			<fieldset>
				<legend>New employee</legend>

				<form:errors path="*" element="div"/>
				<div class="form-group">
					<label for="employeeNumber">Property title</label>
					<div class="col-lg-10">
						<form:input id="title" path="title" type="text" class="form:input-large"/>
						<form:errors path="title" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label >Description</label>
					<div class="col-lg-10">
						<form:input id="description" path="description" type="text"/>
						<form:errors path="description" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="price">Price</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="price" path="price" type="text"/>
							<form:errors path="price" cssClass="text-danger"/>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd"value ="Add"/>
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
</body>
</html>