<%@ page language="java" contentType="text/html; charset=UTF-8"
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
	<link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">


	<link rel="stylesheet" href="fonts/icomoon/style.css">
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<link rel="stylesheet" href="css/tiny-slider.css">
	<link rel="stylesheet" href="css/aos.css">
	<link rel="stylesheet" href="css/style.css">

	<title>Matdongsan</title>
</head>
<body>

	<!-- header 자리 -->
	<jsp:include page="outerLine/header1.jsp"/>
	<!-- header 자리 -->

	<div class="hero">

		<div class="hero-slide">
			<div class="img overlay" style="background-image: url('images/hero_bg_3.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_2.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_1.jpg')"></div>
		</div>

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center">
				<h1 class="heading" data-aos="fade-up" style="line-height: inherit;">내 입맛대로 고르는 내 집! <br>
                                       이제는 "Matdongsan"에서 시작하세요! </h1><br><br>
					<form action="#" class="narrow-w form-search d-flex align-items-stretch mb-3" data-aos="fade-up" data-aos-delay="200">
						<button type="button" class="btn btn-primary" onClick="location.href='Join.jsp'">회원가입</button>
						<button type="button" class="btn btn-primary" onClick="location.href='login.jsp'">로그인</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
    
 	<div style="clear:both;"></div>


	<!-- footer 자리 -->
	<jsp:include page="outerLine/footer.jsp"/>
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
