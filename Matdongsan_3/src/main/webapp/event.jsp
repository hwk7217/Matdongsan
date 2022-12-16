<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="img/pageTap.png">

<meta name="description" content="" />
<meta name="keywords" content="bootstrap, bootstrap5" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">

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
<link rel="stylesheet" href="css/join.css">

<title>Matdongsan</title>

<style>
.EventForm {
	position: absolute;
	width: 400px;
	height: 250px;
	padding: 30px, 20px;
	background-color: rgba(255, 255, 255, 0.95);
	text-align: center;
	top: 55%;
	left: 50%;
	transform: translate(-50%, -50%);
	border-radius: 15px;
}

.btn_Ok {
	position: relative;
	left: 15%;
	transform: translateX(-50%);
	margin-bottom: 50px;
	width: 30%;
	height: 40px;
	background: #005555;
	background-position: right;
	background-size: 200%;
	color: white;
	font-weight: bold;
	border: none;
	cursor: pointer;
	transition: 0.4s;
	display: inline;
	border-radius: inherit;
}
</style>

</head>
<body>

	<!-- header 자리 -->
	<jsp:include page="outerLine/header1.jsp" />
	<!-- header 자리 -->


	<div class="hero">
		<div class="hero-slide">
			<div class="img overlay"
				style="background-image: url('images/hero_bg_3.jpg')"></div>
			<div class="img overlay"
				style="background-image: url('images/hero_bg_2.jpg')"></div>
			<div class="img overlay"
				style="background-image: url('images/hero_bg_1.jpg')"></div>
		</div>
		<form action="Suggestion.jsp" method="POST" class="EventForm"
			onsubmit="DoJoinForm__submit(this); return false;"
			style="text-align: center">
			<br>
			<br>
			<br>
			<br>
			<h6 style="text-align: center" name="#">정상적으로 전송이 완료되었습니다!</h6>
			<br> <br> <br> <input type="button"
				onClick="location.href='Suggestion.jsp'" class="btn_Ok" value="OK" />
		</form>
	</div>

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