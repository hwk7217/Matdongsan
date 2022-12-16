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
<link rel="stylesheet" href="css/join.css">

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

<!-- 자동완성 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./data.js"></script>


<style type="text/css">
#searchInput-autocomplete {
	height: 200px;
	overflow-y: scroll;
	overflow-x: hidden;
}

#searchInput.autocomplete-items {
	position: absolute;
	border: 1px solid #d4d4d4;
	border-bottom: none;
	border-top: none;
	z-index: 99;
	top: 100%;
	left: 0;
	right: 0;
}

.ui-autocomplete {
	max-height: 400px;
	overflow-y: auto; /* prevent horizontal scrollbar */
	overflow-x: hidden; /* add padding to account for vertical scrollbar */
	z-index: 1000 !important;
}
</style>

</head>
<script>
	$(function() { //화면 로딩후 시작
		$("#searchInput").autocomplete({ //오토 컴플릿트 시작
			source : List, // source는 data.js파일 내부의 List 배열
			items : 10,
			focus : function(event, ui) { // 방향키로 자동완성단어 선택 가능하게 만들어줌   
				return false;
			},
			minLength : 1,// 최소 글자수
			delay : 100, //autocomplete 딜레이 시간(ms)
		//disabled: true, //자동완성 기능 끄기
		});
	});
</script>
<body>

	<!-- header 자리 -->
	<jsp:include page="outerLine/header2.jsp" />
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

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center">
					<h1 class="heading" data-aos="fade-up">당신은 어떤 집을 마련하고 싶으신가요 ?
					</h1>
					</h1>
					<form action="SearchCon"
						class="narrow-w form-search d-flex align-items-stretch mb-3"
						data-aos="fade-up" data-aos-delay="200">
						<input id="searchInput" name="SearchInput" type="text"
							class="form-control px-4" placeholder="아파트명 또는 지역명을 검색해주세요.">
						<button type="submit" class="btn btn-primary">Q</button>
						<br> <br>
					</form>


				</div>
			</div>
		</div>



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