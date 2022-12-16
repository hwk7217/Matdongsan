<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="author" content="Untree.co">
	<link rel="shortcut icon" href="favicon.png">

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

	<title>Property &mdash; Free Bootstrap 5 Website Template by Untree.co</title>

	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/Matdongsan/css/join.css">
</head>
<body>

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
					<a href="Start.html" class="logo m-0 float-start">Matdongsan</a>
					<a href="#" class="burger light me-auto float-end mt-1 site-menu-toggle js-menu-toggle d-inline-block d-lg-none" data-toggle="collapse" data-target="#main-navbar">
						<span></span>
					</a>

				</div>
			</div>
		</div>
	</nav>

	<div class="hero">


		<div class="hero-slide">
			<div class="img overlay" style="background-image: url('images/hero_bg_3.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_2.jpg')"></div>
			<div class="img overlay" style="background-image: url('images/hero_bg_1.jpg')"></div>
		</div>
		<form action="doJoin" method="POST" class="joinForm" onsubmit="DoJoinForm__submit(this); return false;"
    style="text-align:center">                                                                                     
        <h2>로그인 오류</h2>
        <hr style="width: 550px;">
        <div class="fonsize">회원 정보가 일치하지 않습니다. 다시 로그인 하세요.</div><br><br>
        <div class="textForm" >
          
          <input name="loginId" type="text" class="id" placeholder="아이디">
          </input>
        </div>
        <div class="textForm">
           
           <input name="loginPwConfirm" type="password" class="pw" placeholder="비밀번호">
        </div>
       <br>
       <br>
	   <br>
       
        <input type="button" onClick="location.href='Login.html'" class="btn_two" value="L O G I N" />
        <input type="button" onClick="location.href='member_search.html'" class="btn_three" value="회원정보 찾기" />
      </form>

	  <div class="site-footer">
		<div class="container">
		   
		   <div class="row">
			  <div class="col-lg-4">
				 <div class="widget">
					<h3>Contact</h3>
					<address>전라남도 순천시 중앙로 260 5층 스마트인재개발원</address>
					<ul class="list-unstyled links">
					   <li><a href="tel://11234567890">061) 123-4567</a></li>
					   <li><a href="mailto:info@mydomain.com">Matdongsan@gmail.com</a></li>
					</ul>
				 </div> <!-- /.widget -->
			  </div> <!-- /.col-lg-4 -->         
			  <div class="col-lg-4">
				 <div class="widget">
					<h3>Times</h3>
					<ul class="list-unstyled links">
					   <li><a href="#">월 ~ 금 9:00 AM - 18:00 PM</a></li>
					</ul>
					<ul class="list-unstyled social">
					   <li><a href="#"><span class="icon-instagram"></span></a></li>
					   <li><a href="#"><span class="icon-twitter"></span></a></li>
					   <li><a href="#"><span class="icon-facebook"></span></a></li>
					   <li><a href="#"><span class="icon-linkedin"></span></a></li>
					   <li><a href="#"><span class="icon-pinterest"></span></a></li>
					   <li><a href="#"><span class="icon-dribbble"></span></a></li>
					</ul>
				 </div> <!-- /.widget -->
			  </div> <!-- /.col-lg-4 -->
		   </div> <!-- /.row -->
  
		   <div class="row mt-5">
			  <div class="col-12 text-center">
				 <!-- 
				**==========
				NOTE: 
				Please don't remove this copyright link unless you buy the license here https://untree.co/license/  
				**==========
			  -->
  
			  <p>Copyright &copy;<script>document.write(new Date().getFullYear());</script>. All Rights Reserved. &mdash; Designed with love by <a href="https://untree.co">Untree.co</a> <!-- License information: https://untree.co/license/ -->
			  | 개인정보처리방침 
			  </p>
  
			</div>
		  </div>
		</div> <!-- /.container -->
	</div> <!-- /.site-footer -->







	

	
	
	
	
	
	
	






	
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>
  </body>
  </html>