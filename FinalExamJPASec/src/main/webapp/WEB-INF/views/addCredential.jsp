<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
					<form:form modelAttribute="credential" action="add"
						class="form-contact contact_form" novalidate="novalidate">
						<div class="row">
							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Username:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="username"
										id="username" placeholder="Username" />
									<form:errors path="username" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Password:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="password"
										id="password" placeholder="Password" />
									<form:errors path="password" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Email:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="email" id="email"
										placeholder="Email" />
									<form:errors path="email" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Firstname:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="firstName"
										id="firstName" placeholder="Fristname" />
									<form:errors path="firstName" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Lastname:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="lastName"
										id="lastName" placeholder="Lastname" />
									<form:errors path="lastName" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Phone:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="phone" id="phone"
										placeholder="Phone" />
									<form:errors path="phone" cssClass="text-danger" />
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="form-group">
								<p style="padding: 10px;"> </p>
							</div>
						</div>
						<div class="form-group mt-9">
							<button type="submit" class="button button-contactForm boxed-btn">Save</button>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</section>
	<!-- ================ contact section end ================= -->
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
