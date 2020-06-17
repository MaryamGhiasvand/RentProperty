<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<section class="container">
		<div class="row">
			<c:forEach items="${employees}" var="employee">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
 						<div class="caption">
							<h3>First Name - ${employee.firstName}</h3>
							<h3>Last Name -  ${employee.lastName}</h3>
							<p>Age -         ${employee.age}</p>
							<p>Title -       ${employee.title} </p>
							<p>NUMBER -      ${employee.employeeNumber} </p>
							<h4>ADDRESS:  </h4>
							<p>${employee.address.street} </p>
							<p>${employee.address.city}, ${employee.address.state}    ${employee.address.zipCode}</p>
							<p>
								<!--a
									href=" <spring:url value="/products/product?id=${product.productId}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a-->
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<section class="container">
		<div class="row">
			<c:forEach items="${employees}" var="employee">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
 						<div class="caption">
							<h3>First Name - ${employee.firstName}</h3>
							<h3>Last Name -  ${employee.lastName}</h3>
							<p>Age -         ${employee.age}</p>
							<p>Title -       ${employee.title} </p>
							<p>NUMBER -      ${employee.employeeNumber} </p>
							<h4>ADDRESS:  </h4>
							<p>${employee.address.street} </p>
							<p>${employee.address.city}, ${employee.address.state}    ${employee.address.zipCode}</p>
							<p>
								<!--a
									href=" <spring:url value="/products/product?id=${product.productId}" /> "
									class="btn btn-primary"> <span
									class="glyphicon-info-sign glyphicon" /></span> Details
								</a-->
							</p>

						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>