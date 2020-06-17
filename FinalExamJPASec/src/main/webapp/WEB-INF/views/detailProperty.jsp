<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Real state</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script type="text/javascript"
	src="<spring:url value="/resource/js/ajax.js"/>"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
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


	<header>
		<div class="header-area ">
			<div class="header-top_area d-none d-lg-block">
				<div class="container">
					<div class="row">
						<div class="col-xl-5 col-md-5 ">
							<div class="header_left">
								<p style="color: #fff; font-weight: bold; font-size: 2em;">Easy Rent</p>
							</div>
						</div>
						<div class="col-xl-7 col-md-7">
							<div class="header_right d-flex">
								<div class="social_media_links">

								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div id="sticky-header" class="main-header-area">
				<div class="container">
					<div class="header_bottom_border">
						<div class="row align-items-center">
							<div class="col-xl-3 col-lg-2">
								<div class="logo">
									<a href="index.html"> <img src="img/logo.png" alt="">
									</a>
								</div>
							</div>
							<div class="col-xl-6 col-lg-7">
								<div class="main-menu  d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<li><a class="active" href="home"><spring:message code="home" text="Home" /></a></li>
											<li><a href="about"><spring:message code="about" text="About" /></a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-xl-3 col-lg-3 d-none d-lg-block">
								<div class="Appointment">
									<div class="book_btn d-none d-lg-block">
										<security:authorize access="isAnonymous()">
											<a href="<spring:url value='/login' />"
												class="btn btn-default pull-right"> <spring:message code="login" text="Login" /></a>
											<a href="credential/add" style="float:left;"><spring:message code="register" text="Register" /></a>
										</security:authorize>
										
										<security:authorize access="isAuthenticated()">
										<a href="dashboard" class="btn btn-default pull-right"><spring:message code="dashboard" text="Dashboard" /></a>
											<spring:url value="/logout" var="logout_url" />
											<form:form action="${logout_url}" class="form-horizontal"
												method="POST">
														<input type="submit" id="btnAdd"
															class="btn btn-danger btn-mini  pull-right"
															value="<spring:message code="logout" text="Logout" />" />
											</form:form>
													
										
		
										</security:authorize>
										
									<c:if test="${LoggedInUser == true}">
										

											<input id= "favoriteButton" type="button" <c:if test="${inFavoriteList == true}"><c:out value="disabled='disabled'"/></c:if> value="add to favorite"
												onclick="addToFavorite(${property.id})" class="button" />

									
									</c:if>
									
									</div>
								</div>
							</div>
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->
	
	<!-- bradcam_area  -->
	<div class="property_details_banner">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-md-8 col-lg-6">
					<div class="comfortable_apartment">
						<h4>${property.title}</h4>
						<h5>${property.description}</h5>
						<p>
							<img
								src="<spring:url value='/resource/template/img/svg_icon/location.svg' />"
								alt=""> 200/A, ${property.address.city},
							${property.address.state}, USA
						</p>
						<div class="quality_quantity d-flex">
							<div class="single_quantity">
								<img
									src="<spring:url value='/resource/template/img/svg_icon/color_box.svg' />"
									alt=""> <span>${property.area} Sqft</span>
							</div>
							<div class="single_quantity">
								<img
									src="<spring:url value='/resource/template/img/svg_icon/color_bed.svg' />"
									alt=""> <span>${property.bedCount} Bed</span>
							</div>
							<div class="single_quantity">
								<img
									src="<spring:url value='/resource/template/img/svg_icon/color_bath.svg' />"
									alt=""> <span>${property.bathCount} Bath</span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-6 col-md-4 col-lg-6">
					<div class="prise_quantity">
						<h4>$${property.price}</h4>
						<a href="#">+10 367 457 735</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->

	<!-- details  -->
	<div class="property_details">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="property_banner">
						<div class="property_banner_active owl-carousel">
							<div class="single_property">
								<img
									src="<spring:url value='/resource/template/img/banner/property_details.png' />"
									alt="">
							</div>
						</div>
					</div>
				</div>
				<div class="col-xl-8 offset-xl-2 col-lg-10 offset-lg-1">
					<div class="details_info">
						<h4>Description</h4>
						<p>${property.description}.</p>


					</div>
					<section class="contact-section">
						<div class="d-none d-sm-block">
							<div id="map"
								style="height: 480px; position: relative; overflow: hidden;">
								<div
									style="height: 100%; width: 100%; position: absolute; top: 0px; left: 0px; background-color: rgb(229, 227, 223);">
									<div class="gm-style"
										style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px;">
										<div tabindex="0"
											style="position: absolute; z-index: 0; left: 0px; top: 0px; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; cursor: url(&quot;https://maps.gstatic.com/mapfiles/openhand_8_8.cur&quot;), default; touch-action: pan-x pan-y;">
											<div
												style="z-index: 1; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 100; width: 100%;">
													<div
														style="position: absolute; left: 0px; top: 0px; z-index: 0;">
														<div
															style="position: absolute; z-index: 991; transform: matrix(1, 0, 0, 1, -100, -189);">
															<div
																style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: -512px; top: 256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: -512px; top: 0px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: -512px; top: -256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 512px; top: -256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 512px; top: 0px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
															<div
																style="position: absolute; left: 512px; top: 256px; width: 256px; height: 256px;">
																<div style="width: 256px; height: 256px;"></div>
															</div>
														</div>
													</div>
												</div>
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 101; width: 100%;"></div>
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 102; width: 100%;"></div>
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 103; width: 100%;">
													<div
														style="position: absolute; left: 0px; top: 0px; z-index: -1;">
														<div
															style="position: absolute; z-index: 991; transform: matrix(1, 0, 0, 1, -100, -189);">
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 0px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 0px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: -256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: -256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: -256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 0px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 256px; top: 256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 0px; top: 256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -256px; top: 256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: 256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: 0px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: -512px; top: -256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: -256px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: 0px;"></div>
															<div
																style="width: 256px; height: 256px; overflow: hidden; position: absolute; left: 512px; top: 256px;"></div>
														</div>
													</div>
												</div>
												<div
													style="position: absolute; left: 0px; top: 0px; z-index: 0;">
													<div
														style="position: absolute; z-index: 991; transform: matrix(1, 0, 0, 1, -100, -189);">
														<div
															style="position: absolute; left: 0px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i470!3i302!4i256!2m3!1e0!2sm!3i476185792!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=70038"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i471!3i302!4i256!2m3!1e0!2sm!3i476185840!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=84496"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i471!3i303!4i256!2m3!1e0!2sm!3i476185840!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=107953"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 0px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i470!3i303!4i256!2m3!1e0!2sm!3i476185792!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=93495"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: -256px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i469!3i303!4i256!2m3!1e0!2sm!3i476185792!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=85128"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: -512px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i468!3i303!4i256!2m3!1e0!2sm!3i476185504!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=46831"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: -512px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i468!3i302!4i256!2m3!1e0!2sm!3i476184952!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=10814"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: -512px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i468!3i301!4i256!2m3!1e0!2sm!3i476184952!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=118428"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 512px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i472!3i301!4i256!2m3!1e0!2sm!3i476185636!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=43995"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 512px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i472!3i302!4i256!2m3!1e0!2sm!3i476185840!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=905"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 512px; top: 256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i472!3i303!4i256!2m3!1e0!2sm!3i476185840!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=24362"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: -256px; top: 0px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i469!3i302!4i256!2m3!1e0!2sm!3i476185792!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=61671"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: -256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i469!3i301!4i256!2m3!1e0!2sm!3i476185792!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=38214"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 0px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i470!3i301!4i256!2m3!1e0!2sm!3i476185792!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=46581"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
														<div
															style="position: absolute; left: 256px; top: -256px; width: 256px; height: 256px; transition: opacity 200ms linear 0s;">
															<img draggable="false" alt="" role="presentation"
																src="https://maps.googleapis.com/maps/vt?pb=!1m5!1m4!1i9!2i471!3i301!4i256!2m3!1e0!2sm!3i476185792!2m3!1e2!6m1!3e5!3m14!2sen-US!3sUS!5e18!12m1!1e68!12m3!1e37!2m1!1ssmartmaps!12m4!1e26!2m2!1sstyles!2zcC5zOi02MHxwLmw6LTYw!4e0&amp;key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;token=94061"
																style="width: 256px; height: 256px; user-select: none; border: 0px; padding: 0px; margin: 0px; max-width: none;">
														</div>
													</div>
												</div>
											</div>
											<div class="gm-style-pbc"
												style="z-index: 2; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; opacity: 0;">
												<p class="gm-style-pbt"></p>
											</div>
											<div
												style="z-index: 3; position: absolute; height: 100%; width: 100%; padding: 0px; border-width: 0px; margin: 0px; left: 0px; top: 0px; touch-action: pan-x pan-y;">
												<div
													style="z-index: 4; position: absolute; left: 50%; top: 50%; width: 100%; transform: translate(0px, 0px);">
													<div
														style="position: absolute; left: 0px; top: 0px; z-index: 104; width: 100%;"></div>
													<div
														style="position: absolute; left: 0px; top: 0px; z-index: 105; width: 100%;"></div>
													<div
														style="position: absolute; left: 0px; top: 0px; z-index: 106; width: 100%;"></div>
													<div
														style="position: absolute; left: 0px; top: 0px; z-index: 107; width: 100%;"></div>
												</div>
											</div>
										</div>
										<iframe aria-hidden="true" frameborder="0"
											style="z-index: -1; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; border: none;"
											src="about:blank"></iframe>
										<div
											style="margin-left: 5px; margin-right: 5px; z-index: 1000000; position: absolute; left: 0px; bottom: 0px;">
											<a target="_blank" rel="noopener"
												href="https://maps.google.com/maps?ll=-31.197,150.744&amp;z=9&amp;t=m&amp;hl=en-US&amp;gl=US&amp;mapclient=apiv3"
												title="Open this area in Google Maps (opens a new window)"
												style="position: static; overflow: visible; float: none; display: inline;"><div
													style="width: 66px; height: 26px; cursor: pointer;">
													<img alt=""
														src="https://maps.gstatic.com/mapfiles/api-3/images/google_white5.png"
														draggable="false"
														style="position: absolute; left: 0px; top: 0px; width: 66px; height: 26px; user-select: none; border: 0px; padding: 0px; margin: 0px;">
												</div></a>
										</div>
										<div
											style="background-color: white; padding: 15px 21px; border: 1px solid rgb(171, 171, 171); font-family: Roboto, Arial, sans-serif; color: rgb(34, 34, 34); box-sizing: border-box; box-shadow: rgba(0, 0, 0, 0.2) 0px 4px 16px; z-index: 10000002; display: none; width: 300px; height: 180px; position: absolute; left: 315px; top: 150px;">
											<div
												style="padding: 0px 0px 10px; font-size: 16px; box-sizing: border-box;">Map
												Data</div>
											<div style="font-size: 13px;">Map data ©2019 Google</div>
											<button draggable="false" title="Close" aria-label="Close"
												type="button" class="gm-ui-hover-effect"
												style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: absolute; cursor: pointer; user-select: none; top: 0px; right: 0px; width: 37px; height: 37px;">
												<img
													src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224px%22%20height%3D%2224px%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23000000%22%3E%0A%20%20%20%20%3Cpath%20d%3D%22M19%206.41L17.59%205%2012%2010.59%206.41%205%205%206.41%2010.59%2012%205%2017.59%206.41%2019%2012%2013.41%2017.59%2019%2019%2017.59%2013.41%2012z%22%2F%3E%0A%20%20%20%20%3Cpath%20d%3D%22M0%200h24v24H0z%22%20fill%3D%22none%22%2F%3E%0A%3C%2Fsvg%3E%0A"
													style="pointer-events: none; display: block; width: 13px; height: 13px; margin: 12px;">
											</button>
										</div>
										<div class="gmnoprint"
											style="z-index: 1000001; position: absolute; right: 166px; bottom: 0px; width: 121px;">
											<div draggable="false" class="gm-style-cc"
												style="user-select: none; height: 14px; line-height: 14px;">
												<div
													style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
													<div style="width: 1px;"></div>
													<div
														style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
												</div>
												<div
													style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
													<a
														style="text-decoration: none; cursor: pointer; display: none;">Map
														Data</a><span>Map data ©2019 Google</span>
												</div>
											</div>
										</div>
										<div class="gmnoscreen"
											style="position: absolute; right: 0px; bottom: 0px;">
											<div
												style="font-family: Roboto, Arial, sans-serif; font-size: 11px; color: rgb(68, 68, 68); direction: ltr; text-align: right; background-color: rgb(245, 245, 245);">Map
												data ©2019 Google</div>
										</div>
										<div class="gmnoprint gm-style-cc" draggable="false"
											style="z-index: 1000001; user-select: none; height: 14px; line-height: 14px; position: absolute; right: 95px; bottom: 0px;">
											<div
												style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
												<div style="width: 1px;"></div>
												<div
													style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
											</div>
											<div
												style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
												<a
													href="https://www.google.com/intl/en-US_US/help/terms_maps.html"
													target="_blank" rel="noopener"
													style="text-decoration: none; cursor: pointer; color: rgb(68, 68, 68);">Terms
													of Use</a>
											</div>
										</div>
										<button draggable="false" title="Toggle fullscreen view"
											aria-label="Toggle fullscreen view" type="button"
											class="gm-control-active gm-fullscreen-control"
											style="background: none rgb(255, 255, 255); border: 0px; margin: 10px; padding: 0px; position: absolute; cursor: pointer; user-select: none; border-radius: 2px; height: 40px; width: 40px; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; overflow: hidden; top: 0px; right: 0px;">
											<img
												src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%20018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
												style="height: 18px; width: 18px;"><img
												src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
												style="height: 18px; width: 18px;"><img
												src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C0v2v4h2V2h4V0H2H0z%20M16%2C0h-4v2h4v4h2V2V0H16z%20M16%2C16h-4v2h4h2v-2v-4h-2V16z%20M2%2C12H0v4v2h2h4v-2H2V12z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
												style="height: 18px; width: 18px;">
										</button>
										<div draggable="false" class="gm-style-cc"
											style="user-select: none; height: 14px; line-height: 14px; position: absolute; right: 0px; bottom: 0px;">
											<div
												style="opacity: 0.7; width: 100%; height: 100%; position: absolute;">
												<div style="width: 1px;"></div>
												<div
													style="background-color: rgb(245, 245, 245); width: auto; height: 100%; margin-left: 1px;"></div>
											</div>
											<div
												style="position: relative; padding-right: 6px; padding-left: 6px; box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); white-space: nowrap; direction: ltr; text-align: right; vertical-align: middle; display: inline-block;">
												<a target="_blank" rel="noopener"
													title="Report errors in the road map or imagery to Google"
													href="https://www.google.com/maps/@-31.197,150.744,9z/data=!10m1!1e1!12b1?source=apiv3&amp;rapsrc=apiv3"
													style="font-family: Roboto, Arial, sans-serif; font-size: 10px; color: rgb(68, 68, 68); text-decoration: none; position: relative;">Report
													a map error</a>
											</div>
										</div>
										<div
											class="gmnoprint gm-bundled-control gm-bundled-control-on-bottom"
											draggable="false" controlwidth="40" controlheight="81"
											style="margin: 10px; user-select: none; position: absolute; bottom: 95px; right: 40px;">
											<div class="gmnoprint" controlwidth="40" controlheight="81"
												style="position: absolute; left: 0px; top: 0px;">
												<div draggable="false"
													style="user-select: none; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px; cursor: pointer; background-color: rgb(255, 255, 255); width: 40px; height: 81px;">
													<button draggable="false" title="Zoom in"
														aria-label="Zoom in" type="button"
														class="gm-control-active"
														style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
														<img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23666%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23333%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpolygon%20fill%3D%22%23111%22%20points%3D%2218%2C7%2011%2C7%2011%2C0%207%2C0%207%2C7%200%2C7%200%2C11%207%2C11%207%2C18%2011%2C18%2011%2C11%2018%2C11%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;">
													</button>
													<div
														style="position: relative; overflow: hidden; width: 30px; height: 1px; margin: 0px 5px; background-color: rgb(230, 230, 230); top: 0px;"></div>
													<button draggable="false" title="Zoom out"
														aria-label="Zoom out" type="button"
														class="gm-control-active"
														style="background: none; display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; overflow: hidden; width: 40px; height: 40px; top: 0px; left: 0px;">
														<img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218%22%20height%3D%2218%22%20viewBox%3D%220%200%2018%2018%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C7h18v4H0V7z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;">
													</button>
												</div>
											</div>
											<div class="gmnoprint" controlwidth="40" controlheight="40"
												style="display: none; position: absolute;">
												<div style="width: 40px; height: 40px;">
													<button draggable="false" title="Rotate map 90 degrees"
														aria-label="Rotate map 90 degrees" type="button"
														class="gm-control-active"
														style="background: none rgb(255, 255, 255); display: none; border: 0px; margin: 0px 0px 32px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
														<img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2224%22%20height%3D%2222%22%20viewBox%3D%220%200%2024%2022%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20fill-rule%3D%22evenodd%22%20d%3D%22M20%2010c0-5.52-4.48-10-10-10s-10%204.48-10%2010v5h5v-5c0-2.76%202.24-5%205-5s5%202.24%205%205v5h-4l6.5%207%206.5-7h-4v-5z%22%20clip-rule%3D%22evenodd%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="height: 18px; width: 18px;">
													</button>
													<button draggable="false" title="Tilt map"
														aria-label="Tilt map" type="button"
														class="gm-tilt gm-control-active"
														style="background: none rgb(255, 255, 255); display: block; border: 0px; margin: 0px; padding: 0px; position: relative; cursor: pointer; user-select: none; width: 40px; height: 40px; top: 0px; left: 0px; overflow: hidden; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 4px -1px; border-radius: 2px;">
														<img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23666%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23333%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="width: 18px;"><img
															src="data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%2218px%22%20height%3D%2216px%22%20viewBox%3D%220%200%2018%2016%22%3E%0A%20%20%3Cpath%20fill%3D%22%23111%22%20d%3D%22M0%2C16h8V9H0V16z%20M10%2C16h8V9h-8V16z%20M0%2C7h8V0H0V7z%20M10%2C0v7h8V0H10z%22%2F%3E%0A%3C%2Fsvg%3E%0A"
															style="width: 18px;">
													</button>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div
									style="background-color: white; font-weight: 500; font-family: Roboto, sans-serif; padding: 15px 25px; box-sizing: border-box; top: 5px; border: 1px solid rgba(0, 0, 0, 0.12); border-radius: 5px; left: 50%; max-width: 375px; position: absolute; transform: translateX(-50%); width: calc(100% - 10px); z-index: 1;">
									<div>
										<img alt=""
											src="https://maps.gstatic.com/mapfiles/api-3/images/google_gray.svg"
											draggable="false"
											style="padding: 0px; margin: 0px; border: 0px; height: 17px; vertical-align: middle; width: 52px; user-select: none;">
									</div>
									<div style="line-height: 20px; margin: 15px 0px;">
										<span style="color: rgba(0, 0, 0, 0.87); font-size: 14px;">This
											page can't load Google Maps correctly.</span>
									</div>
									<table style="width: 100%;">
										<tr>
											<td style="line-height: 16px; vertical-align: middle;"><a
												href="https://developers.google.com/maps/documentation/javascript/error-messages?utm_source=maps_js&amp;utm_medium=degraded&amp;utm_campaign=billing#api-key-and-billing-errors"
												target="_blank" rel="noopener"
												style="color: rgba(0, 0, 0, 0.54); font-size: 12px;">Do
													you own this website?</a></td>
											<td style="text-align: right;"><button
													class="dismissButton">OK</button></td>
										</tr>
									</table>
								</div>
							</div>
							<script>
                                        function initMap() {
                                            var uluru = {
                                                lat:  ${property.address.latitude} ,
                                                lng:  ${property.address.longitude} 
                                            };
                                            var grayStyles = [{
                                                    featureType: "all",
                                                    stylers: [{
                                                            saturation: -90
                                                        },
                                                        {
                                                            lightness: 50
                                                        }
                                                    ]
                                                },
                                                {
                                                    elementType: 'labels.text.fill',
                                                    stylers: [{
                                                        color: '#ccdee9'
                                                    }]
                                                }
                                            ];
                                            var map = new google.maps.Map(document.getElementById('map'), {
                                                center: {
                                                    lat: ${property.address.latitude},
                                                    lng: ${property.address.longitude}
                                                },
                                                zoom: 6,
                                                styles: grayStyles,
                                                scrollwheel: false
                                            });
                                        }
                                    </script>
							<script
								src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&amp;callback=initMap">
                                    </script>

						</div>
					</section>

					<section>
						<div>
							<h3>Comments :</h3>
						</div>
						<br /> <br />
						<div>
							<div>
								<!-- addreview form by Maryam-->
								<c:if test="${LoggedInUser == true}">
									<form:form modelAttribute="PropertytReview"
										action="addPropertyReview" method="post">
										<fieldset>
											<form:input type="hidden" value='${property.id}'
												path="Property.id" />
											<h4 >
												<spring:message code="propertyReviewForm.title"
													text="add your Comment here:" />
											</h4>
											<table style="width:100%;">
												<tr>
													<td><label for="reviewTitle"> <spring:message
																code="reviewTitle" text="add a title : " /></label></td>
													<td><p>
															<form:input path="title" />
														</p></td>
													<td>
														<div style="text-align: center;">
															<form:errors path="title" class="error" />
														</div>
													</td>
												</tr>


												<tr>
													<td><h6><label for="comment"> <spring:message
																code="comment" text="Comment:" /></label></h6></td>
													<td><p>
															<form:input path="comment" style="width:100%;"/>
														</p></td>
													<td>
														<div style="text-align: center;">
															<form:errors path="comment" class="error" />
														</div>
													</td>
												</tr>

												<tr>
													<td><label for="starCount"> <spring:message
																code="starRate" text="stars" /></label></td>
													<td>
														<form>
															<input type="radio" name="starCount" value=1 class="fa fa-star" />
															<input type="radio" name="starCount" value=2 class="fa fa-star" />
															<input type="radio" name="starCount" value=3 class="fa fa-star" />
															<input type="radio" name="starCount" value=4 class="fa fa-star" />
															<input type="radio" name="starCount" value=4 class="fa fa-star" />
														</form>
													</td>

												</tr>

												<tr>
													<td colspan="2"><input type="submit"
														value="Save" /></td>
												</tr>
											</table>
										</fieldset>

									</form:form>

								</c:if>
								<!-- add review form by Maryam -->
							</div>
							<c:forEach var="review" items="${propertyReviews}">
								<table cellpadding="2" cellspacing="2" class="comment-table">

									<tr>
										<td><p>${review.credentials.username}</p></td>
										<td><p>${review.starCount}
												<i class="fa fa-star" style="color: orange"
													aria-hidden="true"></i>
											</p></td>
									</tr>
									<tr>
										<td><h4>${review.title}</h4></td>
									</tr>

									<tr>
										<td><p>${review.comment}</p></td>
									</tr>

								</table>
							</c:forEach>

						</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- /details  -->

	<!-- footer start -->
	<footer class="footer">
		<div class="copy-right_text">
			<div class="container">
				<div class="footer_border"></div>
				<div class="row">
					<div class="col-xl-12">
						<p class="copy_right text-center">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							Template by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!--/ footer end  -->

	<!-- link that opens popup -->

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>

	<script
		src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"> </script>
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
        function collision($div1, $div2) {
            var x1 = $div1.offset().left;
            var w1 = 40;
            var r1 = x1 + w1;
            var x2 = $div2.offset().left;
            var w2 = 40;
            var r2 = x2 + w2;

            if (r1 < x2 || x1 > r2)
                return false;
            return true;
        }
        // Fetch Url value 
        var getQueryString = function (parameter) {
            var href = window.location.href;
            var reg = new RegExp('[?&]' + parameter + '=([^&#]*)', 'i');
            var string = reg.exec(href);
            return string ? string[1] : null;
        };
        // End url 
        // // slider call
        $('#slider').slider({
            range: true,
            min: 20,
            max: 200,
            step: 1,
            values: [getQueryString('minval') ? getQueryString('minval') : 20, getQueryString('maxval') ?
                getQueryString('maxval') :200
            ],

            slide: function (event, ui) {

                $('.ui-slider-handle:eq(0) .price-range-min').html( ui.values[0] + 'K');
                $('.ui-slider-handle:eq(1) .price-range-max').html( ui.values[1] + 'K');
                $('.price-range-both').html('<i>K' + ui.values[0] + ' - </i>K' + ui.values[1]);

                // get values of min and max
                $("#minval").val(ui.values[0]);
                $("#maxval").val(ui.values[1]);

                if (ui.values[0] == ui.values[1]) {
                    $('.price-range-both i').css('display', 'none');
                } else {
                    $('.price-range-both i').css('display', 'inline');
                }

                if (collision($('.price-range-min'), $('.price-range-max')) == true) {
                    $('.price-range-min, .price-range-max').css('opacity', '0');
                    $('.price-range-both').css('display', 'block');
                } else {
                    $('.price-range-min, .price-range-max').css('opacity', '1');
                    $('.price-range-both').css('display', 'none');
                }

            }
        });

        $('.ui-slider-range').append('<span class="price-range-both value"><i>' + $('#slider').slider('values', 0) +
            ' - </i>' + $('#slider').slider('values', 1) + '</span>');

        $('.ui-slider-handle:eq(0)').append('<span class="price-range-min value">' + $('#slider').slider('values', 0) +
            'k</span>');

        $('.ui-slider-handle:eq(1)').append('<span class="price-range-max value">' + $('#slider').slider('values', 1) +
            'k</span>');
    </script>
</body>

</html>