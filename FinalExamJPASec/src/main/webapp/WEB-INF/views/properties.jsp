<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Products List</h3>
	<table border="1" cellpadding="2" cellspacing="2">
	<input id="title" type="text" class="form:input-large"/>
	<a href=" <spring:url value="/properties/edit?search=vvvv" /> ">Search</a>
		<tr>
			<th>Title</th>
			<th>Description</th>
			<th>Price</th>
		</tr>
		<c:forEach var="property" items="${properties}">
			<tr>
				<td>${property.title}</td>
				<td>${property.description}</td>
				<td>${property.price}</td>
				<td><a href=" <spring:url value="/properties/delete?id=${property.id}" /> ">Delete</a>	
				</td>
				<td><a href=" <spring:url value="/properties/edit?search=${property.address.state}" /> ">Edit</a>				
				</td>
				<td><a href=" <spring:url value="/properties/detail?id=${property.id}" /> ">Details</a>				
				</td>
				<td><a href=" <spring:url value="/addRentHistory?id=${property.id}" /> ">Rent</a>				
				</td>
			</tr>
		</c:forEach>
	</table>
<a href="<c:url value="/properties/add" />" class="btn btn-danger btn-mini pull-right">Add a new one</a>	

</body>
</html>