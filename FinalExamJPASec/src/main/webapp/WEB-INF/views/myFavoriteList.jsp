<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My favorite list</title>
</head>
<body>
<h3>My favorite list</h3>
aaaa
	<table border="1" cellpadding="2" cellspacing="2">
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
			</tr>
		</c:forEach>
	</table>
</body>
</html>