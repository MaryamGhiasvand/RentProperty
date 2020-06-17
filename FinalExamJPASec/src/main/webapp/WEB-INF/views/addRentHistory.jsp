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
				<h1>History</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="rentHistory" action="addRentHistory" method="post">
			<fieldset>
	<div class="form-group"><label for="number">Status</label>
				<div class="col-lg-10">
						<form:select id="status" path="status" class="form:input-large">
					                <option value="RENTED">Rented</option>
									<option value="CANCELED">Canceled</option>
									<option value="AVAILABLE">Available</option>
					   </form:select>	
					   </div>
				</div>
				<form:errors path="*" element="div"/>
			
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
					<label >Description</label>
					<div class="col-lg-10">
						<form:input id="comment" path="comment" type="text"/>
						<form:errors path="comment" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnRent"value ="Save"/>
					</div>
				</div>				
				
			</fieldset>
		</form:form>
	</section>
	<section class="container">
	<fieldset>
				<legend>History</legend>
	<table border="1" cellpadding="2" cellspacing="2">	
		<tr>
			<th>Property</th>
			<th>Start date</th>
			<th>End Date</th>
			<th>Price</th>
			<th>Status</th>
		</tr>
		<c:forEach var="history" items="${rentHistories}">
			<tr>
				<td>${history.property.title}</td>
				<td>${history.startDate}</td>
				<td>${history.endDate}</td>
				<td>${history.price}</td>
				<td>${history.status}</td>
			</tr>
		</c:forEach>
	</table>
	</fieldset>
	</section>
</body>
</html>