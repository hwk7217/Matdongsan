<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 100;
	height: 450px;
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

.tg .tg-baqh {
	text-align: center;
	vertical-align: bottom display: block;
	margin:  4px 79px 0 10px;
	background: rgba(255, 255, 255, 0.98);
	color: #353b48;
}

.tg .tg-cixx {
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

.tg .tg-7zrl {
	text-align: center;
	vertical-align: bottom display: block;
	margin:  4px 79px 0 10px;
	background: rgba(255, 255, 255, 0.98)
}

.tg2 {
	border-collapse: collapse;
	border-spacing: 0;
}

.tg2 td {
	border-color: #c8d6e5;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 15px 5px;
	word-break: normal;
}

.tg2 th {
	border-color: #c8d6e5;;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 15px 5px;
	word-break: normal;
}

.tg2 .tg-8hlh {
	background-color: #E2EFDA;
	color: #FFF;
	text-align: center;
	vertical-align: bottom
}

.tg2 .tg-7zrl {
	background-color: white;
	border-color: #c8d6e5;;
	text-align: left;
	vertical-align: bottom
}

.tg_result {
	border-collapse: collapse;
	border-spacing: 0;
	text-align: center;
}

.tg_result td {
	border-color: #c8d6e5;;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	overflow: hidden;
	padding: 12px 5px;
	word-break: normal;
}

.tg_result th {
	border-color: #c8d6e5;;
	border-style: solid;
	border-width: 1px;
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	overflow: hidden;
	padding: 12px 5px;
	word-break: normal;
}

.tg_result .tg_ltv {
	background-color: #DBDBDB;
	text-align: center;
	vertical-align: bottom;
	color: #2f3640;
}

.tg_result .tg-jfmb {
	color: #FFF;
	font-weight: bold;
	text-align: center;
	vertical-align: bottom
}

.tg_result .tg-39yz {
	color: #FFF;
	font-weight: bold;
	text-align: center;
	vertical-align: bottom
}

.tg_result .tg-7zrl {
	text-align: center;
	vertical-align: bottom
}

.tg_result .tg-8d8j {
	text-align: center;
	vertical-align: bottom
}

.InfoBox {
	position: relative;
	background: #f5f6fa;
	width: 650px;
	height: 290px;
	text-align: center;
	padding: 20px;
	color: black;
	left: 5px;
}

.InfoBox:before {
	content: "";
	position: absolute;
	top: 0;
	right: 0;
	border-width: 0 16px 16px 0;
	border-style: solid;
	border-color: #FFFFFF #FFFFFF #718093 #718093;
	background: #718093;
	display: block;
	width: 0;
}

</style>
</head>

<body>

	<!-- header 자리 -->
	<jsp:include page="outerLine/header2.jsp" />
	<!-- header 자리 -->

	<div class="hero page-inner overlay"
		style="background-image: url('images/hero_bg_1.jpg'); height: 1400px; overflow: auto;">
		<div class="container">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-9 text-center mt-5"
					style="margin-top: 66px; padding-top: 115px; width: 85%;">
					<h1 class="heading" data-aos="fade-up"
						style="opacity: 1; transform: translateZ(0); margin-top: 50px;">부동산
						계산기</h1>
					<div style="float: right; margin-top: 35px">
						<table class="tg">
							<thead>
								<tr>
									<th class="tg-1vaz" rowspan="3">주택시가<br> 9억원
									</th>
									<th class="tg-1vaz" colspan="2" rowspan="3">구분</th>
									<th class="tg-1vaz" colspan="2" rowspan="2">투기과열지구 투기지역</th>
									<th class="tg-1vaz" colspan="2" rowspan="2">조정대상지역</th>
									<th class="tg-1vaz" colspan="2" rowspan="2">조정대상지역외 수도권</th>
									<th class="tg-1vaz" colspan="2" rowspan="2">기타</th>
								</tr>
								<tr>
								</tr>
								<tr>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">LTV</span></th>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">DTI</span></th>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">LTV</span></th>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">DTI</span></th>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">LTV</span></th>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">DTI</span></th>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">LTV</span></th>
									<th class="tg-cixx"><span
										style="font-weight: normal; background-color: #E2EFDA">DTI</span></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="tg-baqh" rowspan="5">이하</td>
									<td class="tg-8d8j" colspan="2"><span
										style="font-weight: normal">서민실수요자</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">70%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">70%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">70%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">없음</span></td>
								</tr>
								<tr>
									<td class="tg-8d8j" colspan="2"><span
										style="font-weight: normal">무주택</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">40%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">40%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">70%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">70%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">없음</span></td>
								</tr>
								<tr>
									<td class="tg-baqh" rowspan="2">1주택</td>
									<td class="tg-8d8j"><span style="font-weight: normal">원칙</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">0%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">-</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">0%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">-</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">없음</span></td>
								</tr>
								<tr>
									<td class="tg-8d8j"><span style="font-weight: normal">예외</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">40%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">40%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">없음</span></td>
								</tr>
								<tr>
									<td class="tg-8d8j" colspan="2"><span
										style="font-weight: normal">2주택 이상</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">0%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">-</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">0%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">-</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">없음</span></td>
								</tr>
								<tr>
									<td class="tg-baqh" rowspan="2">이상</td>
									<td class="tg-8d8j" colspan="2"><span
										style="font-weight: normal">원칙</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">0%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">-</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">0%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">-</span></td>
									<td class="tg-baqh" colspan="4" rowspan="3">공시가격 9억원 이하<br>
										주택구입시 기준과 동일
									</td>
								</tr>
								<tr>
									<td class="tg-8d8j" colspan="2"><span
										style="font-weight: normal">예외</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">40%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">40%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
								</tr>
								<tr>
									<td class="tg-7zrl"><span style="font-weight: normal">15억
											초과</span></td>
									<td class="tg-8d8j" colspan="2"><span
										style="font-weight: normal">초고가 아파트</span></td>
									<td class="tg-8d8j" colspan="2"><span
										style="font-weight: normal">불가</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">60%</span></td>
									<td class="tg-8d8j"><span style="font-weight: normal">50%</span></td>
								</tr>
							</tbody>
						</table>
						<h6
							style="color: white; font-size: 13px; margin-top: 10px; float: left;">*
							서민실수요자 : 부부합산소득 연 7천만원 미만(생애최초구입은 연 8천만원 미만)의 무주택자</h6>
						<br> <br> <br> <br>
						<div class="InfoBox">
							<p>※ 부동산 계산기란?</p>
							<p>LTV와 DTI의 결과값을 비교하여 더 합리적으로 낮은 대출금액을 보여줍니다.
							<p>
							<p>
								정부가 지정한 투기과열지구 및 투기지역, 조정대상지역, 조정대상외 수도권, 그외 지역에 따라<br>
								LTV, DTI에 대한 비율을 강화하고 있습니다. 서민 실수요자, 무주택자, 1주택, 2주택에 따라서<br>
								LTV, DTI 비율이 다르며 고가주택(시가9억원 초과) 에 따라서도 LTV, DTI 비율을 다릅니다.
							</p>
							<br> <br>
							<p style="text-align: left; font-size: 12px; line-height: 22px;">
								*LTV는 은행들이 주택을 담보로 대출을 해줄 때 적용하는 것으로, 담보가치 대비 최대 대출 가능한도를 의미한다.
								<br>*DTI란 금융기관이 대출자의 연간 소득을 기준으로 얼마나 대출금을 상환할 수 있는지를 판단하는
								것이다.
							</P>
						</div>

					</div>
					<div style="float: left; margin-top: 35px;">
						<table class="tg2">
							<thead>
								<tr>
									<th class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">대출금리</span></th>
									<th class="tg-7zrl"><input type="text" id="a1"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: white;"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">대출기간(년)</span></td>
									<td class="tg-7zrl"><input type="text" id="a2"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: white;"></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">주택가액(시가)</span></td>
									<td class="tg-7zrl"><input type="text" id="a3"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: white;"></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">주택구입지역</span></td>
									<td class="tg-7zrl"><select name="local" id="local"
										size="1"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: #545454;">
											<option value="" selected></option>
											<option value="투기과열지구 투기지역">투기과열지구 투기지역</option>
											<option value="조정대상지역">조정대상지역</option>
											<option value="조정대상지역외 수도권">조정대상지역외 수도권</option>
											<option value="기타">기타</option>
									</select></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">주택보유여부</span></td>
									<td class="tg-7zrl"><select name="home" id="home" size="1"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: #545454;">
											<option value="" selected></option>
											<option value="무주택">무주택</option>
											<option value="1주택">1주택</option>
											<option value="2주택 이상">2주택 이상</option>
									</select></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">연소득(세전)</span></td>
									<td class="tg-7zrl"><input type="text" id="a4"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: white;"></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">주택시가
											9억원</span></td>
									<td class="tg-7zrl"><select name="buy" id="buy" size="1"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: #545454;">
											<option value="" selected></option>
											<option value="이상">이상</option>
											<option value="이하">이하</option>
									</select></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">주거구분</span></td>
									<td class="tg-7zrl"><select name="hometype" id="hometype"
										size="1"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: #545454;">
											<option value="" selected></option>
											<option value="아파트">아파트</option>
											<option value="그외">그외</option>
									</select></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">거주목적</span></td>
									<td class="tg-7zrl"><select name="purpo" id="purpo"
										size="1"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: #545454;">
											<option value="" selected></option>
											<option value="실거주">실거주</option>
											<option value="그외">그외</option>
									</select></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">기존담보대출
											월상환액</span></td>
									<td class="tg-7zrl"><input type="text" id="a5"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: white;"></td>
								</tr>
								<tr>
									<td class="tg-8hlh"><span
										style="font-weight: normal; color: #353b48; background-color: #E2EFDA">그외
											대출 월이자액</span></td>
									<td class="tg-7zrl"><input type="text" id="a6"
										style="background-color: rgba(255, 255, 255, 0.5); border-color: white;"></td>
								</tr>
							</tbody>
						</table>
						<br> <br> <br> <br>

						<!-- 결과값 테이블  -->
						<div>
							<table class="tg_result"
								style="table-layout: fixed; width: 350px">
								<colgroup>
									<col style="width: 149.005952px">
									<col style="width: 154.005952px">
								</colgroup>
								<thead>
									<tr>
										<th class="tg_ltv"><span
											style="font-weight: normal; background-color: #DBDBDB">LTV</span></th>
										<th class="tg-7zrl"><span
											style="font-weight: bold; color: #FFF;" id="ltv"></span></th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="tg_ltv"><span
											style="font-weight: normal; background-color: #DBDBDB">DTI</span></td>
										<td class="tg-8d8j"><span
											style="font-weight: bold; color: #FFF;" id="dti"></span></td>
									</tr>
									<tr>
										<td class="tg_ltv"><span
											style="font-weight: normal; background-color: #DBDBDB">대출가능금액</span></td>
										<td class="tg-jfmb"><span
											style="font-weight: bold; color: #FFF;" id="loan"></span></td>
									</tr>
									<tr>
										<td class="tg_ltv"><span
											style="font-weight: normal; background-color: #DBDBDB">월
												상환액(원리금균등)</span></td>
										<td class="tg-39yz"><span
											style="font-weight: bold; color: #FFF;" id="monthloan"></span></td>
									</tr>
								</tbody>
							</table>
						</div>
						<br> <br>
						<div>
							<button onclick="Calcltv()"
								style="color: #fff; background-color: #005555; border-radius: 10px; font-size: medium; width: 100px;">계산하기</button><br><br>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="aa"></div>
	<div id="bb"></div>
	

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

	<script type="text/javascript">
      function Calcltv() {
         var loanrate = parseFloat(document.querySelector('#a1').value);
         var loanperiod = parseInt(document.querySelector('#a2').value);
         var homeprice = parseInt(document.querySelector('#a3').value);
         var local = document.getElementById('local').value;
         var home = document.getElementById('home').value;
         var income = parseInt(document.querySelector('#a4').value);
         var homesell = document.getElementById('buy').value;
         var homesort = document.getElementById('purpo').value;
         var mrepair = parseInt(document.querySelector('#a5').value);
         var etcrepair = parseInt(document.querySelector('#a6').value);
         var hometype = document.getElementById('hometype').value;
         if ((local == "투기과열지구 투기지역" || local == "조정대상지역")
               && homesort == "그외" && home == "1주택") {
            document.getElementById('ltv').innerText = '0%'

         } else if ((local == "투기과열지구 투기지역" || local == "조정대상지역") && home == "2주택 이상") {
            document.getElementById('ltv').innerHTML =  '0%'
            
         } else if (local == "조정대상지역" && homesort == "실거주" && home == "1주택"){
            document.getElementById('ltv').innerHTML = '60%'
            
         } else if (local == "투기과열지구 투기지역"
               && homesort == "실거주" && home == "1주택") {
            document.getElementById('ltv').innerHTML = '40%'
         
         } else if (home == "무주택" && local == "조정대상지역"
               && homeprice <= 500000000 && income <= 70000000   && homesell == "이하") {
            document.getElementById('ltv').innerHTML = '70%'
            
         } else if (home == "무주택" && local == "투기과열지구 투기지역"
               && homeprice <= 500000000 && income <= 70000000   && homesell == "이하") {
            document.getElementById('ltv').innerHTML =  '50%'

         } else if ((local == "조정대상지역외 수도권" || local == "기타") && home == "무주택") {
            document.getElementById('ltv').innerHTML = '70%'

         } else if (local == "투기과열지구 투기지역" && homeprice > 1500000000){
            document.getElementById('ltv').innerHTML = '불가'
         } else if (local == "투기과열지구 투기지역" && homesort == "실거주" && homeprice >= 900000000 && home == "무주택"){
            document.getElementById('ltv').innerHTML =  '40%'
         } else if (local == "조정대상지역" && homesort == "실거주" && homeprice >= 900000000 && home == "무주택"){
            document.getElementById('ltv').innerHTML =  '60%'
         } else if (local == "투기과열지구 투기지역" && homeprice >= 900000000){
            document.getElementById('ltv').innerHTML =  '0%'
         } else if (local == "조정대상지역" && homeprice >= 900000000){
            document.getElementById('ltv').innerHTML =  '0%'
         } else if (local == "조정대상지역" && homeprice > 1500000000 && home == "무주택" && homesort == "실거주"){
            document.getElementById('ltv').innerHTML =  '60%'
         } else if (local == "투기과열지구" && home == "무주택"){
            document.getElementById('ltv').innerHTML =  '40%'
         } else if (local == "조정대상지역" && home == "무주택"){
            document.getElementById('ltv').innerHTML =  '60%'
         }
         else {
            document.getElementById('ltv').innerHTML =  '60%'
         }
         var vals = document.getElementById('ltv').innerText;
      
         if (vals == '0%') {
            document.getElementById('dti').innerHTML = '0%'
         } else if ((local == "투기과열지구 투기지역" || local == "조정대상지역") && home == "1주택"){
            document.getElementById('dti').innerHTML = '0%'
         } else if ((local == "투기과열지구 투기지역" || local == "조정대상지역") && home == "2주택 이상"){
            document.getElementById('dti').innerHTML = '0%'
         } else if (local == "투기과열지구 투기지역" && home == '1주택' && homesort == '실거주'){
            document.getElementById('dti').innerHTML = '40%'
         } else if (local == "투기과열지구" && home == "무주택"){
           document.getElementById('dti').innerHTML = '50%'
         }
         else if (local == "조정대상지역" && home == "1주택" && homesort == "실거주"){
            document.getElementById('dti').innerHTML = '50%'
         } else if (homeprice <= 500000000 && income <= 70000000 && home == "무주택" && homesell == "이하" && local == "조정대상지역"){
            document.getElementById('dti').innerHTML = '60%'
         } else if (homeprice <= 500000000 && income <= 70000000 && home == "무주택" && homesell == "이하" && local == "투기과열지구 투기지역"){
            document.getElementById('dti').innerHTML = '50%'
         } else if (local == "조정대상지역" && home == "무주택"){
            document.getElementById('dti').innerHTML = '50%'
         } else if (local == "조정대상지역외 수도권" && (home == "1주택" || home == "2주택 이상")){
            document.getElementById('dti').innerHTML = '50%'
         } else if (local == "조정대상지역외 수도권" && home == "무주택"){
           document.getElementById('dti').innerHTML = '60%'
         }
         else if (local == "투기과열지구 투기지역" && homesort == "실거주" && homeprice >= 900000000 && home == "무주택"){
           document.getElementById('dti').innerHTML = '40%'
         } else if (local == "조정대상지역" && homesort == "실거주" && homeprice >= 900000000 && home == "무주택"){
           document.getElementById('dti').innerHTML = '50%'
         } else if (local == "조정대상지역" && homeprice > 1500000000 && home == "무주택" && homesort == "실거주"){
           document.getElementById('dti').innerHTML = '50%'
         } else if (local == "기타"){
            document.getElementById('dti').innerHTML = '없음'
         } else if (vals == "불가"){
            document.getElementById('dti').innerHTML = "불가"
         }
         var vals1 = document.getElementById('dti').innerText;
         var valscut = Number(vals.substr(0,2));
         console.log(valscut);
         var valscut2 = Number(vals1.substr(0,2));
         console.log(valscut2);
         var result1 = (homeprice - 900000000)*0.2 + 360000000;
         var result2 = Math.round((income*(valscut2/100) - mrepair*12 - etcrepair*12)*((1+(loanrate/100))**loanperiod-1)/((loanrate/100)*((1+(loanrate/100))**loanperiod)));
         var result3 = homeprice * (valscut/100); 
         if (vals1 == "없음"){
            var result = homeprice * (valscut/100);
            document.getElementById('loan').innerHTML = result
          } else if (homeprice > 1500000000 && valscut == 40 && hometype == "아파트"){
            document.getElementById('loan').innerHTML = "불가"
          } else if (homeprice > 900000000 && valscut == 40){
            if (result1 > result2){
               document.getElementById('loan').innerHTML = result2
            } else {
               document.getElementById('loan').innerHTML = result1
            }
          } else {
             if (result3 > result2){
                document.getElementById('loan').innerHTML = result2
             } else {
                document.getElementById('loan').innerHTML = result3
             }
          }
         var loan = document.getElementById('loan').innerText;
         var result4 = Math.round((loan*((loanrate/100)/12)*((1+((loanrate/100)/12))**(loanperiod*12)))/(((1+((loanrate/100)/12))**(loanperiod*12)-1)));
      if (result4 > 0){
         document.getElementById('monthloan').innerHTML = result4
      } else {
         document.getElementById('monthloan').innerHTML = 0
      }
      }
   </script>

</body>
</html>