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

	<!-- ================ contact section start ================= -->
	<section class="contact-section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="contact-title">User registration</h2>
				</div>
				<div class="col-lg-12">
					<form:form modelAttribute="newProperty" action="add" method="post" class="form-contact contact_form" novalidate="novalidate"  >
						<form:errors path="*" element="div" />
						<div class="row">

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Type:</p>
								</div>
							</div>
							<div class="col-sm-9" style="padding: 15px;">
								<div class="form-group">
									<form:select id="propertyType" path="propertyType"
										class="form:input-large">
										<option value="HOUSE">HOUSE</option>
										<option value="APARTMENT">APARTMENT</option>
										<option value="VILLA">VILLA</option>
									</form:select>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Status:</p>
								</div>
							</div>
							<div class="col-sm-9" style="padding: 15px;">
								<div class="form-group">
									<form:select id="status" path="status" class="form:input-large">
					                <option value="AVAILABLE">Available</option>
							  		</form:select>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Title:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="title" id="title"
										placeholder="Title" />
									<form:errors path="title" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Description:</p>
								</div>
							</div>
							
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="description"
										id="description" placeholder="Description" />
									<form:errors path="description" cssClass="text-danger" />
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Price:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="price" id="price"
										placeholder="Price" />
									<form:errors path="price" cssClass="text-danger" />
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Bath count:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="bathCount"
										id="bathCount" placeholder="Bath Count" />
									<form:errors path="bathCount" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Bed count:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="bedCount"
										id="bedCount" placeholder="Bed Count" />
									<form:errors path="bedCount" cssClass="text-danger" />
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<form:checkbox path="airConditioning" id="airConditioning" />
									<label class="control-label col-lg-2" for="airConditioning">Air
										Conditioning</label>
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<form:checkbox path="grill" id="grill" />
									<label class="control-label col-lg-2" for="grill">Grill</label>
									<form:errors path="grill" cssClass="text-danger" id="grill" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<form:checkbox path="oven" id="oven" />
									<label class="control-label col-lg-2" for="oven">Oven</label>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<form:checkbox path="parking" id="parking" />
									<label class="control-label col-lg-2" for="parking">Parking</label>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">State:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="address.state"
										id="address.state" placeholder="State" />
									<form:errors path="address.state" cssClass="text-danger" />
								</div>
							</div>
							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">City:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:select id="city" path="address.city"
										class="form:input-large form-control valid">
										<option value="Fairfield">Fairfield</option>
										<option value="Gilmore">Gilmore City</option>
										<option value="Hartwick">Hartwick</option>
										<option value="Maloy">Maloy</option>
										<option value="Palmer">Palmer</option>
									</form:select>
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Street:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="address.street"
										id="address.street" placeholder="Street" />
									<form:errors path="address.street" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">ZipCode:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="address.zipCode"
										id="address.zipCode" placeholder="ZipCode" />
									<form:errors path="address.zipCode" cssClass="text-danger" />
								</div>
							</div>
							
							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Longitude:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="address.longitude"
										id="address.longitude" placeholder="Longitude" />
									<form:errors path="address.longitude" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Latitude:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<form:input class="form-control valid" path="address.latitude"
										id="address.latitude" placeholder="Latitude" />
									<form:errors path="address.latitude" cssClass="text-danger" />
								</div>
							</div>

							<div class="col-sm-3">
								<div class="form-group">
									<p style="padding: 10px;">Photo:</p>
								</div>
							</div>
							<div class="col-sm-9">
								<div class="form-group">
									<%-- <form:input class="form-control valid" path="propertyPhotos"
										id="propertyImage"  type="file" size="50" /> --%>
								</div>
							</div>
							
						</div>
						<div class="form-group mt-12">
							<button type="submit" class="button button-contactForm boxed-btn">Add</button>
						</div>
						
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