<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html class="no-js" lang="zxx">

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
								<p>Welcome to Conbusi consulting service</p>
							</div>
						</div>
						<div class="col-xl-7 col-md-7">
							<div class="header_right d-flex">
								<div class="short_contact_list">
									<ul>
										<li><a href="#"> <i class="fa fa-envelope"></i>
												info@docmed.com
										</a></li>
										<li><a href="#"> <i class="fa fa-phone"></i> 1601-609
												6780
										</a></li>
									</ul>
								</div>
								<div class="social_media_links">
									<a href="#"> <i class="fa fa-linkedin"></i>
									</a> <a href="#"> <i class="fa fa-facebook"></i>
									</a> <a href="#"> <i class="fa fa-google-plus"></i>
									</a>
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
											<li><a href="index.html">home</a></li>
											<li><a href="#">pages <i class="ti-angle-down"></i></a>
												<ul class="submenu">
													<li><a href="about.html">about</a></li>
													<li><a href="property_details.html">property
															details</a></li>
													<li><a href="elements.html">elements</a></li>
												</ul></li>
											<li><a class="active" href="Property.html">Property</a></li>
											<li><a href="#">blog <i class="ti-angle-down"></i></a>
												<ul class="submenu">
													<li><a href="blog.html">blog</a></li>
													<li><a href="single-blog.html">single-blog</a></li>
												</ul></li>
											<li><a href="contact.html">Contact</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-xl-3 col-lg-3 d-none d-lg-block">
								<div class="Appointment">
									<div class="search_btn">
										<a href="#"> <i class="ti-search"></i>
										</a>
									</div>
									<div class="book_btn d-none d-lg-block">
										<a href="#">Add Property</a>
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
								<form action="#">
									<div class="row">
										<div class="col-xl-12">
											<div class="form_wrap d-flex">
												<div class="single-field max_width ">
													<label for="#">Location</label> <select class="wide">
														<option data-display="NewYork">NewYork</option>
														<option value="1">Bangladesh</option>
														<option value="2">India</option>
													</select>
												</div>
												<div class="single-field max_width ">
													<label for="#">Property type</label> <select class="wide">
														<option data-display="Apartment">Apartment</option>
														<option value="1">Apartment</option>
														<option value="2">Apartment</option>
													</select>
												</div>
												<div class="single_field range_slider">
													<label for="#">Price ($)</label>
													<div id="slider"></div>
												</div>
												<div class="single-field min_width ">
													<label for="#">Bed Room</label> <select class="wide">
														<option data-display="01">01</option>
														<option value="1">02</option>
														<option value="2">03</option>
													</select>
												</div>
												<div class="single-field min_width ">
													<label for="#">Bath Room</label> <select class="wide">
														<option data-display="01">01</option>
														<option value="1">02</option>
														<option value="2">03</option>
													</select>
												</div>
												<div class="serach_icon">
													<a href="#"> <i class="ti-search"></i>
													</a>
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
				
			</div>
			<div class="row">
				<div class="col-xl-12">
					<div class="more_property_btn text-center">
						<a href="#" class="boxed-btn3-line">More Properties</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- contact_action_area  -->
	<div class="contact_action_area">
		<div class="container">
			<div class="row">
				<div class="col-xl-7">
					<div class="action_heading">
						<h3>Add your property for sale</h3>
					</div>
				</div>
				<div class="col-xl-5">
					<div class="call_add_action">
						<span>+10 637 367 4567</span> <a href="#" class="boxed-btn3-line">Load
							More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- /contact_action_area  -->


	<!-- footer start -->
	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-3 col-md-6 col-lg-3">
						<div class="footer_widget">
							<div class="footer_logo">
								<a href="#"> <img
									src="<spring:url value='/resource/template/img/footer_logo.png' />"
									alt="">
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
							<script>document.write(new Date().getFullYear());</script>
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