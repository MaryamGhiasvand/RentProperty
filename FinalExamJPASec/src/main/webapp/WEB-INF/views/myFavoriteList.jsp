<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My favorite list</title>
</head>
<body>
	<h3>My favorite list</h3>
	<table border="1" cellpadding="2" cellspacing="2">
		<tr>
			<th>Title</th>
			<th>Description</th>
			<th>Price</th>
		</tr>
		<c:forEach var="favoriteProperty" items="${favoriteProperties}">
			<tr>
				<td>${favoriteProperty.property.title}</td>
				<td>${favoriteProperty.property.description}</td>
				<td>${favoriteProperty.property.price}</td>
<%-- 				<td><a
					href=" <spring:url value="/favoriteProperties/removeFavorite?propertyId=${favoriteProperty.id}" /> ">Delete</a>
				</td> --%>
			</tr>
		</c:forEach>
	</table>
</body>
</html>