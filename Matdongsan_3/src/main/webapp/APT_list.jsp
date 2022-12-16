<%@page import="com.smhrd.domain.LandDTO"%>
<%@page import="com.smhrd.domain.LandDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.List"%>

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
.tg {
	border-collapse: collapse;
	border-spacing: 100;
	margin-left: 30px;
	width: 1100px;
}

.tg td {
	border-color: #c8d6e5;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	color: #545454;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg th {
	border-color: #c8d6e5;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 10px 5px;
	word-break: normal;
}

.tg .tg-1vaz {
	background-color: #E2EFDA;
	text-align: center;
	vertical-align: top
}

.tg .tg-8d8j {
	text-align: center;
	vertical-align: bottom display: block;
	margin:  4px 79px 0 10px;
	background: rgba(255, 255, 255, 0.98)
}

.tg .tg-8d8j input {
	width: 100% /* 인풋 백그라운드 사이즈 자동 조정 */
   font-size:15px
}

/* 인풋 텍스트 컬러 설정 */
.tg .tg-8d8j input::placeholder {
	color: #ffffff;
}
</style>

</head>
<script>
	$(function() { //화면 로딩후 시작
		$("#searchInput").autocomplete({ //오토 컴플릿트 시작
			source : List, // source는 data.js파일 내부의 List 배열
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
	<%
	String input = (String) session.getAttribute("SearchInput");
	%>

	<%
	LandDAO dao = new LandDAO();

	List<LandDTO> Landlist = dao.selectAllLand(input);
	%>


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

		<!-- 리스트 테이블 -->
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5"
					style="margin-top: 80px; padding-top: 115px; width: 85%">

					<h2 class="heading" data-aos="fade-up">검색 결과</h2>



					<!-- 테이블 생성  -->
					<div>
						<table class="tg">

							<thead>
								<tr>
									<th class="tg-1vaz">NUMBER</th>
									<th class="tg-1vaz" style="width: 500px;">NAME</th>
									<th class="tg-1vaz">ADDRESS</th>
									<th class="tg-1vaz">AREA</th>
								</tr>
							</thead>
							<tbody>
								<%
								int landnum = 0;
								for (LandDTO L : Landlist) {
									landnum++;
								%>
								<tr>
									<td class="tg-8d8j"><%=landnum%></td>
									<td class="tg-8d8j"><a
										href="SelectLand?aptNo=<%=L.getApt_no()%>"><%=L.getApt_name()%></a></td>
									<td class="tg-8d8j"><%=L.getApt_addr()%> <%=L.getApt_addr2()%></td>
									<td class="tg-8d8j"><%=L.getApt_area()%></td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
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