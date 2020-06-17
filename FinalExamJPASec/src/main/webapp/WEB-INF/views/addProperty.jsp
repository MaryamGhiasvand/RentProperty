<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Busicol</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<link rel="stylesheet"
	href="<spring:url value='/resource/template/css/bootstrap.min.css' />">

<link rel="stylesheet"
	href="<spring:url value='/resource/template/css/font-awesome.min.css' />">
<link rel="stylesheet"
	href="<spring:url value='/resource/template/css/themify-icons.css' />">
<link rel="stylesheet"
	href="<spring:url value='/resource/template/css/nice-select.css' />">
<link rel="stylesheet"
	href="<spring:url value='/resource/template/css/flaticon.css' />">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">
<link rel="stylesheet"
	href="<spring:url value='/resource/template/css/style.css' />">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
	<!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->


	<!-- header-start -->
	<header>
		<div class="header-area ">
			<div class="header-top_area d-none d-lg-block">
				<div class="container">
					<div class="row">

						<div class="col-xl-7 col-md-7">
							<div class="header_right d-flex">
								<div class="short_contact_list"></div>
								<div class="social_media_links">
									<a href="home"> Home </a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->
	<!-- bradcam_area  -->

	<!--/ bradcam_area  -->

	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">User registration</h2>
				</div>
				<div class="col-lg-12">
					<form:form modelAttribute="newProperty" action="add" method="post"
						class="form-contact contact_form" novalidate="novalidate">
						<form:errors path="*" element="div" />
						<div class="row">
							<div class="col-sm-12" style="padding:15px;">
								<div class="form-group">
									<form:select id="propertyType" path="propertyType"
										class="form:input-large">
										<option value="HOUSE">HOUSE</option>
										<option value="APARTMENT">APARTMENT</option>
										<option value="VILLA">VILLA</option>
									</form:select>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="title" id="title"
										placeholder="Title" />
									<form:errors path="title" cssClass="text-danger" />
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="description"
										id="description" placeholder="Description" />
									<form:errors path="description" cssClass="text-danger" />
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="price" id="price"
										placeholder="Price" />
									<form:errors path="price" cssClass="text-danger" />
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<form:checkbox path="airConditioning" />
									<label class="control-label col-lg-2" for="airConditioning">Air
										Conditioning</label>
								</div>
							</div>
							<div class="col-sm-12">
								<div class="form-group">
									<form:checkbox path="grill" />
									<label class="control-label col-lg-2" for="grill">Grill</label>
									<form:errors path="grill" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:checkbox path="oven" />
									<label class="control-label col-lg-2" for="oven">Oven</label>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:checkbox path="parking" />
									<label class="control-label col-lg-2" for="parking">Parking</label>
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="address.state"
										id="address.state" placeholder="State" />
									<form:errors path="address.state" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="address.city"
										id="address.city" placeholder="City" />
									<form:errors path="address.city" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="Street"
										id="address.street" placeholder="address.street" />
									<form:errors path="address.street" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="address.zipCode"
										id="address.zipCode" placeholder="ZipCode" />
									<form:errors path="address.zipCode" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="address.longitude"
										id="address.longitude" placeholder="Longitude" />
									<form:errors path="address.longitude" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-12">
								<div class="form-group">
									<form:input class="form-control valid" path="address.latitude"
										id="address.latitude" placeholder="Latitude" />
									<form:errors path="address.latitude" cssClass="text-danger" />
								</div>
							</div>
						</div>
						<div class="form-group mt-3">
							<button type="submit" class="button button-contactForm boxed-btn">Add</button>
						</div>
						<input type="file" name="fileUpload" size="50" />
					</form:form>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ contact section end ================= -->

	<!-- footer start -->
	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget">
							<div class="footer_logo">
								<a href="#"> <img src="img/footer_logo.png" alt="">
								</a>
							</div>
							<p>
								<a href="#">conbusi@support.com</a> <br> +10 873 672 6782 <br>
								600/D, Green road, NewYork
							</p>
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="ti-twitter-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
								</ul>
							</div>

						</div>
					</div>
					<div class="col-xl-2 col-md-6 col-lg-3">
						<div class="footer_widget">
							<h3 class="footer_title">Services</h3>
							<ul>
								<li><a href="#">Marketing & SEO</a></li>
								<li><a href="#"> Startup</a></li>
								<li><a href="#">Finance solution</a></li>
								<li><a href="#">Food</a></li>
								<li><a href="#">Travel</a></li>
							</ul>

						</div>
					</div>
					<div class="col-xl-2 col-md-6 col-lg-2">
						<div class="footer_widget">
							<h3 class="footer_title">Useful Links</h3>
							<ul>
								<li><a href="#">About</a></li>
								<li><a href="#">Blog</a></li>
								<li><a href="#"> Contact</a></li>
								<li><a href="#">Appointment</a></li>
							</ul>
						</div>
					</div>
					<div class="col-xl-4 col-md-6 col-lg-4">
						<div class="footer_widget">
							<h3 class="footer_title">Subscribe</h3>
							<form action="#" class="newsletter_form">
								<input type="text" placeholder="Enter your mail">
								<button type="submit">Subscribe</button>
							</form>
							<p class="newsletter_text">Esteem spirit temper too say
								adieus who direct esteem esteems luckily.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right_text">
			<div class="container">
				<div class="footer_border"></div>
				<div class="row">
					<div class="col-xl-12">
						<p class="copy_right text-center">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--/ footer end  -->

	<!-- JS here -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>

	<script
		src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js">
		
	</script>
	<!-- JS here -->

	<script
		src="<spring:url value='/resource/template/js/bootstrap.min.js' />"></script>
	<script
		src="<spring:url value='/resource/template/js/jquery.scrollUp.min.js' />"></script>
	<script
		src="<spring:url value='/resource/template/js/nice-select.min.js' />"></script>
	<!--contact js-->
	<script
		src="<spring:url value='/resource/template/js/jquery.ajaxchimp.min.js' />"></script>
	<script src="<spring:url value='/resource/template/js/main.js' />"></script>
	<script>
		$('#datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}
		});
		$('#datepicker2').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}

		});
	</script>
</body>

</html>
