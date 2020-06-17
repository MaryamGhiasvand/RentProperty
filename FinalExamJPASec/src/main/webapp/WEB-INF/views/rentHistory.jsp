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
	<h4>My properties </h4>
	<section class="container">
		<div class="row">
			<c:forEach items="${properties}" var="property">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
 						<div class="caption">
							<p>Title- ${property.title}</p>
							<p>Description - ${property.description}</p>
							<p>Price - ${property.price}</p>				
							<p>Address - ${property.address.state} ${property.address.city} - ${property.address.street}</p>						
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	
	<h4>Rent History</h4>
	<section class="container">
		<div class="row">
			<c:forEach items="${rentHistories}" var="history">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
 						<div class="caption">
 							
 							<p>Property - ${history.property.title}</p>		
							<p>Start Date- ${history.startDate}</p>
							<p>End Date - ${history.endDate}</p>
							<p>Price - ${history.price}</p>				
							<p>Renter - ${history.credential.firstName} ${history.credential.lastName}</p>
							<p>Phone - ${history.credential.phone}</p>				
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>