<%@page import="com.smhrd.domain.BMDTO"%>
<%@page import="com.smhrd.domain.SGDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.domain.MemberDAO"%>
<%@page import="com.smhrd.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script src="js/jquery-3.6.0.min.js"></script>

<title>Matdongsan</title>

<style type="text/css">
#a {
	float: left;
	margin-right: 10px;
	width: 50%;
}

#b {
	float: right;
	width: 40%;
	margin: auto;
}

.col-12.mb-3 {
	box-sizing: content-box;
}

#c1 {
	margin-top: 10%;
	display: inline;
}

#c2 {
	margin-top: 10%;
	display: inline;
}
</style>
</head>
<body>
	<%
	Member loginMember = (Member) session.getAttribute("loginMember");
	%>
	<!-- header 자리 -->
	<jsp:include page="outerLine/header2.jsp" />
	<!-- header 자리 -->

	<div class="hero page-inner overlay"
		style="background-image: url('images/hero_bg_1.jpg');">

		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5">
					<h1 class="heading" data-aos="fade-up">마이페이지</h1>
				</div>
			</div>
		</div>
	</div>

	<div class="d-block agent-box p-5"
		style="text-align: center; margin-top: 0px;">
		<div class="img mb-4">
			<img src="images/person_7-min.png" alt="Image" class="img-fluid">
		</div>
		<div class="text">
			<h3 class="mb-0" name="id" style="font-size: 18pt"><%=loginMember.getUser_id()%></h3>
			<p style="font-size: 13pt"><%=loginMember.getUser_id()%>님의 마이페이지
				입니다.
			</p>
		</div>
	</div>

	<br>
	<br>
	<br>
	<div class="col-lg-8" data-aos="fade-up" data-aos-delay="200">
		<p
			style="text-align: left; font-size: 25px; margin-left: 250px; color: black;">
			<strong> 회원 정보 수정</strong>
		</p>
		<br>
		<form action="UpdateCon" method="post">
			<div class="row" id="a">
				<div class="col-12 mb-3">
					<input type="password" class="form-control" name="UpdatePw"
						placeholder="비밀번호 변경">
				</div>
				<br>
				<div class="col-12 mb-3">
					<input type="text" class="form-control" name="UpdateEmail"
						placeholder="이메일 변경">
				</div>
				<!-- <div class="col-12 mb-3">
                    <textarea name="" id="" cols="30" rows="7" class="form-control" placeholder=""></textarea>
                </div> -->

				<div class="col-12" style="text-align: center; padding-top: 30px;">
					<input type="submit" value="수정" class="btn btn-primary">
				</div>

			</div>

		</form>
		<!-- <table>
        		<tr>
        			<td id="b">
        				<span ><input type="submit" value="내 건의사항 목록" id="c"
		               class="btn btn-primary2" onclick="lookBtn()"
		               style="margin-top: 0px;"></span>
        			</td>
        			<td id="b">
        				<span><input type="submit" value="검색한 아파트 목록" id="c2"
		               class="btn btn-primary2" onclick="look()"></span>
        			</td>
        		</tr>
        	</table>  -->


		<div class="row" id="b">
			<div class="col-12" style="text-align: center; margin-left: 30px;">
				<span><input type="submit" value="내 건의사항 목록" id="c"
					class="btn btn-primary2" onclick="lookBtn()"
					style="margin-top: 0px;"></span>
			</div>
		</div>

		<div class="row" id="b">
			<div class="col-12" style="text-align: center; margin-left: 30px;">
				<span><input type="submit" value="검색한 아파트 목록" id="c2"
					class="btn btn-primary2" onclick="look()"></span>
			</div>
		</div>

	</div>
	<div style="clear: both;"></div>
	<%
	MemberDAO dao = new MemberDAO();
	int user_no = loginMember.getUser_no();
	List<SGDTO> SGlist = dao.selectSG(user_no);
	List<BMDTO> BMlist = dao.selectBM(user_no);
	%>


	<div class="d-block agent-box p-5" id="d"
		style="display: none !important;">
		<table class="table">
			<br>
			<br>
			<h2 style="text-align: center; font-size: 25px;">건의사항 목록</h2>
			<br>
			<thead>
				<tr>
					<th scope="col">Number</th>
					<th scope="col">Email</th>
					<th scope="col">Suggestion</th>
					<th scope="col">Content</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<%
				int sgnum = 0;
				for (SGDTO sg : SGlist) {
					sgnum++;
				%>
				<tr>
					<th scope="row"><%=sgnum%></th>
					<td><%=sg.getSg_email()%></td>
					<td><%=sg.getSg_title()%></td>
					<td><%=sg.getSg_content()%></td>
					<td><a href="DeleteCon?sg_no=<%=sg.getSg_no()%>">삭제</a></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
		<br>
		<!-- 닫기 버튼 -->
		<div style="text-align: center;">
			<button type="button" class="btn btn-primary" id="closeBtn1">닫기</button>
		</div>
		<br> <br>
	</div>

	<div style="clear: both;"></div>
	<br>
	<br>>
	<div class="d-block agent-box p-5" id="d2"
		style="display: none !important;">
		<table class="table">
			<br>
			<br>
			<h2 style="text-align: center; font-size: 25px;">즐겨찾기 목록</h2>
			<br>
			<thead>
				<tr>
					<th scope="col">Number</th>
					<th scope="col">NAME</th>
					<th scope="col">AREA</th>
					<th scope="col">PRICE</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<%
				int bmnum = 0;
				for (BMDTO bm : BMlist) {
					bmnum++;
				%>
				<tr>
					<th scope="row"><%=bmnum%></th>
					<td><a href="SelectLand?aptNo=<%=bm.getApt_no()%>"><%=bm.getApt_name()%></a></td>
					<td><%=bm.getApt_area()%></td>
					<td><%=bm.getApt_price()%></td>
					<td><a href="DeleteBM?bm_no=<%=bm.getBm_no()%>">삭제</a></td>
				</tr>
				<%
				}
				%>

			</tbody>
		</table>
		<br>
		<!-- 닫기 버튼 -->
		<div style="text-align: center;">
			<button type="button" class="btn btn-primary" id="closeBtn2">닫기</button>
		</div>
		<br> <br>
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
	<script src="js/esc.js"></script>

	<script type="text/javascript">
		function look() {
			$('#d2').css('display', 'block');
		};

		$('#closeBtn1').on('click', function() {
			$('#d').attr('style', 'display:none !important');
		});

		$('#closeBtn2').on('click', function() {
			$('#d2').attr('style', 'display:none !important');
		});
	</script>
</body>
</html>
