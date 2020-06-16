<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.error {
	color: red;
}
</style>

</head>
<body>
	<div>
	
		<form:form modelAttribute="PropertytReview" action="addPropertyReview"
			method="post">
			<fieldset>
<form:input type="hidden" value='${property.id}' path = "Property.id"/>
				<legend>
					<spring:message code="propertyReviewForm.title" text="add a review" />
				</legend>
				<table>
					<tr>
						<td><label for="propertyTitle"> <spring:message
									code="Property.title" text="Property Title :" /></label></td>
						<td><p>${property.title}</p></td>
					</tr>
					<tr>
						<td><label for="description"> <spring:message
									code="Property.description" text="Description :" /></label></td>
						<td><p>${property.description}</p></td>
					</tr>


					<tr>
						<td><label for="reviewTitle"> <spring:message
									code="reviewTitle" text="add a title for review : " /></label></td>
						<td><p>
								<form:input path="title" />
							</p></td>
						<td>
							<div style="text-align: center;">
								<form:errors path="title" cssStyle="error" />
							</div>
						</td>
					</tr>


					<tr>
						<td><label for="comment"> <spring:message
									code="comment" text="add your Comment" /></label></td>
						<td><p>
								<form:input path="comment" />
							</p></td>
						<td>
							<div style="text-align: center;">
								<form:errors path="comment" cssStyle="error" />
							</div>
						</td>
					</tr>

					<tr>
						<td><label for="starCount"> <spring:message
									code="starCount" text="stars" /></label></td>
						<td>
							<form>
								<input type="radio" name="starCount" value=1 class="star" /> <input
									type="radio" name="starCount" value=2 class="star" /> <input
									type="radio" name="starCount" value=3 class="star" /> <input
									type="radio" name="starCount" value=4 class="star" /> <input
									type="radio" name="starCount" value=4 class="star" />
							</form>
						</td>

					</tr>

					<tr>
						<td colspan="2"><input type="submit" value="Save Changes" />
						</td>
					</tr>
				</table>
			</fieldset>

		</form:form>
	</div>
</body>
</html>