<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
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
				<h1>Rent</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="rentHistory" action="addRentHistory" method="post">
			<fieldset>
				<legend>Rent</legend>

				<form:errors path="*" element="div"/>
				<div class="form-group">
					<label for="number">Status type</label>
					<div class="col-lg-10">				
			   		</div>
				</div>
			
				<div class="form-group">
					<label>Start sate</label>
					<div class="col-lg-10">
						<form:input id="startDate" path="startDate"/>
					</div>
				</div>

				<div class="form-group">
					<label >End date</label>
					<div class="col-lg-10">
						<form:input id="endDate" path="endDate"/>
					</div>
				</div>

				<div class="form-group">
					<label>Price</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="price" path="price" type="text"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnRent"value ="Rent"/>
					</div>
				</div>				
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>