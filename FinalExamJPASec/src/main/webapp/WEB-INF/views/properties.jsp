<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h3>Products List</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Title</th>
			<th>Description</th>
			<th>Price</th>
		</tr>
		<c:forEach var="property" items="${properties }">
			<tr>
				<td>${property.title }</td>
				<td>${property.description }</td>
				<td>${property.price }</td>
				<td>
					<a>Delete</a>
				
				</td>
			</tr>
		</c:forEach>
	</table>
<a href="<c:url value="/properties/add" />" class="btn btn-danger btn-mini pull-right">Add a new one</a>	<br>
</body>
</html>