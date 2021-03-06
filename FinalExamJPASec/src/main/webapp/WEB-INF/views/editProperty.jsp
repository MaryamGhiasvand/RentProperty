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
				<h1>Edit Property</h1>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form  modelAttribute="property" action="edit" method="post">
			<fieldset>
				<legend>Property</legend>

				<form:errors path="*" element="div"/>
				<div class="form-group">
					<label for="number">Property type</label>
					<div class="col-lg-10">
					<form:select id="propertyType" path="propertyType" class="form:input-large">
				                <option value="HOUSE">HOUSE</option>
								<option value="APARTMENT">APARTMENT</option>
								<option value="VILLA">VILLA</option>
				   </form:select>	
			   		</div>
				</div>
				
				<div class="form-group">
					<label for="number">Property title</label>
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
					<label class="control-label col-lg-2" for="price">Bath count</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="bathCount" path="bathCount" type="text"/>
							<form:errors path="bathCount" cssClass="text-danger"/>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="bedCount">Bed count</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="bedCount" path="bedCount" type="text"/>
							<form:errors path="bedCount" cssClass="text-danger"/>
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<form:checkbox path = "airConditioning" />
					<label class="control-label col-lg-2" for="airConditioning">Air Conditioning</label>
						
				</div>
				<div class="form-group">
					<form:checkbox path = "grill" />
					<label class="control-label col-lg-2" for="grill">Grill</label>
						
				</div>
				<div class="form-group">
					<form:checkbox path = "oven" />
					<label class="control-label col-lg-2" for="oven">Oven</label>
						
				</div>
				<div class="form-group">
					<form:checkbox path = "parking" />
					<label class="control-label col-lg-2" for="parking">Parking</label>						
				</div>
				
				
				<h4>Address</h4>
			  	<div class="form-group">
					<label class="control-label col-lg-2" for="state">State</label>
					<div class="col-lg-10">
						<form:select id="state" path="address.state" class="form:input-large">
				                <option value="IOWA">IOWA</option>
				   		</form:select>	
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="city">City</label>
					<div class="col-lg-10">
						<form:select id="city" path="address.city" class="form:input-large">
				                <option value="Fairfield">Fairfield</option>
				                <option value="Test1">Test1</option>
				                <option value="Tes2">Tes2</option>
				   		</form:select>	
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="street">Street</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input path="address.street" id="street" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="zipCode">Zip Code</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input path="address.zipCode" id="zipCode" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="longitude">Longitude</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input path="address.longitude" id="longitude" />
						</div>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2" for="state">Latitude</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input path="address.latitude" id="latitude" />
						</div>
					</div>
				</div>				

				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd"value ="Save"/>
					</div>
				</div>	
			</fieldset>
		</form:form>
	</section>
</body>
</html>