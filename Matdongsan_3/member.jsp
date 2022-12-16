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
        <h2>회원정보</h2>
        <hr style="width: 550px;">
        <div class="fonsize">당신의 회원정보입니다.</div><br><br>
        <div class="textForm" >
          
          <input name="loginId" type="text" class="id" placeholder="아이디">
          <input name="loginId" type="text" class="id" placeholder="test123">
          </input>
        </div>
        <div class="textForm">
           
           <input name="loginPwConfirm" type="password" class="pw" placeholder="비밀번호">
           <input name="loginPwConfirm" type="password" class="pw" placeholder="123456">
        </div>
         <div class="textForm">
           
          <input name="email" type="text" class="email" placeholder="이메일">
          <input name="email" type="text" class="email" placeholder="test123@gmail.com">
        </div>
       <br>
       <br>
       
        <input type="button" class="btn" value="L O G I N" onClick="location.href='Login.html'"/>
      </form>


    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tiny-slider.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/counter.js"></script>
    <script src="js/custom.js"></script>
  </body>
  </html>