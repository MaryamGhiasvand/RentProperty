<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Real state</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

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

	<!-- header-start -->
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
											<li><a href="contact"><spring:message code="contact" text="Contact" /></a></li>
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

	<!-- slider_area_start -->
	<div class="slider_area">
		<div
			class="single_slider single_slider2  d-flex align-items-center property_bg overlay2">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-xl-10 offset-xl-1">
						<div class="property_wrap">
							<div class="slider_text text-center justify-content-center">
								<h3>Search property</h3>
							</div>
							<div class="property_form">
								<form action="search" method="get">
								<div class="row">
									<div class="col-xl-12">
										<div class="form_wrap d-flex">
											<div class="single-field max_width ">
												<label for="#"><spring:message code="location" text="Location" /></label> 
												<select name="city" class="wide">
													<option data-display="New York" value="New York">New York</option>
													<option value="Fairfield">Fairfield</option>
													<option value="chicago">Chicago</option>
													<option value="sanfrancisco">San Francisco</option>
												</select>
											</div>
											<div class="single-field max_width ">
												<label for="#"><spring:message code="property.type" text="Property Type" /></label> <select class="wide"
													name="propertyType">
													<option value="APARTMENT" data-display="APARTMENT">Apartment</option>
													<option value="HOUSE">House</option>
													<option value="VILLA">Villa</option>
												</select>
											</div>
											<div class="single_field range_slider">
												<label for="#"><spring:message code="price" text="Price" /> ($)</label>
												<div id="slider"></div>
											</div>
											<div class="single-field min_width ">
												<label for="#"><spring:message code="bedroom" text="Bed Room" /></label> <select class="wide"
													name="bedCount">
													<option data-display="01">01</option>
													<option value="2">02</option>
													<option value="3">03</option>
													<option value="4">04</option>
													<option value="5">05</option>
													<option value="6">06</option>
													<option value="7">07</option>
													<option value="8">08</option>
													<option value="9">09</option>
													<option value="10">10</option>
												</select>
											</div>
											
											<div class="single-field min_width ">
												<label for="#"><spring:message code="bathroom" text="Bathroom" /></label> <select class="wide"
													name="bathCount">
													<option data-display="01">01</option>
													<option value="2">02</option>
													<option value="3">03</option>
													<option value="4">04</option>
													<option value="5">05</option>
													<option value="6">06</option>
													<option value="7">07</option>
													<option value="8">08</option>
													<option value="9">09</option>
													<option value="10">10</option>
												</select>
											</div>
											<div class="serach_icon">
												<input type="submit" value="<spring:message code="search" text="Search" />"
													style="background: #FD8E5E; text-align: center; line-height: 45px; color: #fff; border-radius: 5px; display: inline-block; cursor: pointer;" />
											</div>
										</div>
									</div>
								</div>
							</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider_area_end -->
	<div class="popular_property plus_padding">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="section_title mb-40 text-center">
						<h4>${properties.size()} Properties found</h4>
					</div>
				</div>
			</div>
			<div class="row">
			

			<c:if test="${fn:length(properties) > 0}">
			<c:forEach var="property" items="${properties}">
			<a href="properties/detail?id=${property.id}" >
				<div class="col-xl-4 col-md-6 col-lg-4">
					<div class="single_property">
						<div class="property_thumb">
							<div class="property_tag">For Rent</div>
							<img
								src="<spring:url value='/resource/template/img/property/1.png' />"
								alt="">
						</div>
						<div class="property_content">
							<div class="main_pro">
								<h3>
									<a href="#"><c:out value="${property.title}" /></a>
								</h3>
								<div class="mark_pro">
									<img
										src="<spring:url value='/resource/template/img/svg_icon/location.svg' />"
										alt=""> <span>Popular Properties</span>
								</div>
								<span class="amount">From $${property.price}</span>
							</div>
						</div>
						<div class="footer_pro">
							<ul>
								<li>
									<div class="single_info_doc">
										<img
											src="<spring:url value='/resource/template/img/svg_icon/square.svg' />"
											alt=""> <span>${property.area} Sqft</span>
									</div>
								</li>
								<li>
									<div class="single_info_doc">
										<img
											src="<spring:url value='/resource/template/img/svg_icon/bed.svg' />"
											alt=""> <span>${property.bedCount} Bed</span>
									</div>
								</li>
								<li>
									<div class="single_info_doc">
										<img
											src="<spring:url value='/resource/template/img/svg_icon/bath.svg' />"
											alt=""> <span>${property.bathCount} Bath</span>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				</a>
			  </c:forEach>
			</c:if>
			</div>
		</div>
	</div>




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