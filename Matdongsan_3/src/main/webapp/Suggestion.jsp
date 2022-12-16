<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- /*
* Template Name: Property
* Template Author: Untree.co
* Template URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="img/pageTap.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap5" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="css/tiny-slider.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">

<title>Matdongsan</title>
</head>
<body>

	<!-- header 자리 -->
	<jsp:include page="outerLine/header2.jsp" />
	<!-- header 자리 -->

	<div class="hero page-inner overlay"
		style="background-image: url('images/hero_bg_1.jpg');">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">건의사항</h1>


				</div>
			</div>
		</div>
	</div>


	<div class="section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 mb-5 mb-lg-0" data-aos="fade-up"
					data-aos-delay="100">
					<div class="contact-info">

						<div class="address mt-2">
							<i class="icon-room"></i>
							<h4 class="mb-2">주소 :</h4>
							<p>
								전라남도 순천시 중앙로 260 <br> 5층 스마트인재개발원
							</p>
						</div>

						<div class="open-hours mt-4">
							<i class="icon-clock-o"></i>
							<h4 class="mb-2">운영 시간 :</h4>
							<p>월 ~ 금 9:00 AM - 18:00 PM</p>
						</div>

						<div class="email mt-4">
							<i class="icon-envelope"></i>
							<h4 class="mb-2">E-mail :</h4>
							<p>Matdongsan@gmail.com</p>
						</div>

						<div class="phone mt-4">
							<i class="icon-phone"></i>
							<h4 class="mb-2">연락처 :</h4>
							<p>061) 123-4567</p>
						</div>

					</div>
				</div>
				<div class="col-lg-8" data-aos="fade-up" data-aos-delay="200"
					style="margin-left: 0px;">
					<form action="SuggestCon">
						<div class="row">
							<div class="col-12 mb-3">
								<input type="email" name="sg_email" class="form-control"
									placeholder="E-mail">
							</div>
							<div class="col-12 mb-3">
								<textarea name="sg_title" id="" cols="30" rows="1"
									class="form-control" placeholder="제목을 입력하세요."></textarea>
							</div>
							<div class="col-12 mb-3">
								<textarea name="sg_content" id="" cols="30" rows="7"
									class="form-control" placeholder="건의사항을 입력하세요."></textarea>
							</div>
							<div class="col-12" style="text-align: center">
								<input type="submit" value="건의사항 전송" class="btn btn-primary">
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- /.untree_co-section -->

	<div style="clear: both;"></div>


	<!-- footer 자리 -->
	<jsp:include page="outerLine/footer.jsp" />
	<!-- footer 자리 -->

	<!-- Preloader -->
	<div id="overlayer"></div>
	<div class="loader">
		<div class="spinner-border" role="status">
			<span class="visually-hidden">Loading...</span>
		</div>
	</div>

	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/tiny-slider.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/counter.js"></script>
	<script src="js/custom.js"></script>

</body>
</html>