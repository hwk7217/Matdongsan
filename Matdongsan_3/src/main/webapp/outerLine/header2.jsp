<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 헤더 시작 -->
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close">
				<span class="icofont-close js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>

	<nav class="site-nav">
		<div class="container">
			<div class="menu-bg-wrap">
				<div class="site-navigation">
					<a href="APT_search.jsp" class="logo m-0 float-start">
					<img src="img/mainlogo.png" style="width: 30px; height: 30px;">&nbsp;&nbsp;Matdongsan
					</a> 
					<a></a>

					<ul
						class="js-clone-nav d-none d-lg-inline-block text-start site-menu float-end">
						<li class="active"><a href="S"></li>
						<li><a href="APT_search.jsp">매물검색</a></li>
						<li><a href="CalcLand.jsp">부동산계산기</a></li>
						<li><a href="Suggestion.jsp">건의사항</a></li>
						<li><a href="MyPage.jsp">마이페이지</a></li>
						<li><a href="Start.jsp">로그아웃</a></li>
					</ul>

					<a href="#"
						class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none"
						data-toggle="collapse" data-target="#main-navbar"> <span></span>
					</a>

				</div>
			</div>
		</div>
	</nav>
	<!-- 헤더끝 -->
	
	<script src="js/navbar.js"></script>
	
</body>
</html>