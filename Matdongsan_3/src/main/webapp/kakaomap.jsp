<%@page import="com.smhrd.domain.TPDTO"%>
<%@page import="com.smhrd.domain.LandDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<!-- CSS only -->

<style>
#container {
	overflow: hidden;
	height: 500px;
	position: relative;
	margin-top: 100px;
}

#mapWrapper {
	width: 1260px;
	height: 400px;
	z-index: 1;
	margin-top: 70px;
	margin-left: 320px;
}

#rvWrapper {
	width: 50%;
	height: 400px;
	top: 0;
	right: 0;
	position: absolute;
	z-index: 0;
	left: 400px;
	margin-top: 70px;
	margin-left: 225px;
}

#container.view_roadview #mapWrapper {
	width: 37%;
}

#roadviewControl {
	position: absolute;
	top: 80px;
	left: 330px;
	width: 40px;
	height: 40px;
	z-index: 1;
	cursor: pointer;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/2018/pc/common/img_search.png)
		0 -450px no-repeat;
}

#roadviewControl.active {
	background-position: 0 -350px;
}

#close {
	position: absolute;
	padding: 4px;
	top: 7px;
	left: 5px;
	cursor: pointer;
	background: #fff;
	border-radius: 4px;
	border: 1px solid #c8c8c8;
	box-shadow: 0px 1px #888;
	margin-left: 910px;
}

#close .img {
	display: block;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/rv_close.png)
		no-repeat;
	width: 14px;
	height: 14px;
}

.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 15px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 0%;
	height: 400px;
	margin: 30px 400px 0px 300px margin-left:225px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 400px;
	margin: 10px 0px 0px 0px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}

.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 2px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}

#category {
	position: absolute;
	top: 5px;
	left: 510px;
	border-radius: 5px;
	border: 1px solid #909090;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
	background: #a5d0bb;
	overflow: hidden;
	z-index: 1;
	display: flex;
}

#category li {
	float: left;
	list-style: none;
	width: 60px;
	border-right: 1px solid #acacac;
	padding: 5px 0;
	text-align: center;
	cursor: pointer;
}

#category li.on {
	background: #eee;
}

#category li:hover {
	background: #ffe6e6;
	border-left: 1px solid #acacac;
	margin-left: -1px;
}

#category li:last-child {
	margin-right: 0;
	border-right: 0;
}

#category li span {
	display: block;
	margin: 0 auto 3px;
	width: 27px;
	height: 28px;
}

#category li .category_bg {
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png)
		no-repeat;
}

#category li .bank {
	background-position: -10px 0;
}

#category li .mart {
	background-position: -10px -36px;
}

#category li .pharmacy {
	background-position: -10px -72px;
}

#category li .oil {
	background-position: -10px -108px;
}

#category li .cafe {
	background-position: -10px -144px;
}

#category li .store {
	background-position: -10px -180px;
}

#category li.on .category_bg {
	background-position-x: -46px;
}

.placeinfo_wrap {
	position: absolute;
	bottom: 28px;
	left: -150px;
	width: 300px;
}

.placeinfo {
	position: relative;
	width: 100%;
	border-radius: 6px;
	border: 1px solid #ccc;
	border-bottom: 2px solid #ddd;
	padding-bottom: 10px;
	background: #fff;
}

.placeinfo:nth-of-type(n) {
	border: 0;
	box-shadow: 0px 1px 2px #888;
}

.placeinfo_wrap .after {
	content: '';
	position: relative;
	margin-left: -12px;
	left: 50%;
	width: 22px;
	height: 12px;
	background:
		url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')
}

.placeinfo a, .placeinfo a:hover, .placeinfo a:active {
	color: #fff;
	text-decoration: none;
}

.placeinfo a, .placeinfo span {
	display: block;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

.placeinfo span {
	margin: 5px 5px 0 5px;
	cursor: default;
	font-size: 13px;
}

.placeinfo .title {
	font-weight: bold;
	font-size: 14px;
	border-radius: 6px 6px 0 0;
	margin: -1px -1px 0 -1px;
	padding: 10px;
	color: #fff;
	background: #d95050;
	background: #d95050
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png)
		no-repeat right 14px center;
}

.placeinfo .tel {
	color: #0f7833;
}

.placeinfo .jibun {
	color: #999;
	font-size: 11px;
	margin-top: 0;
}

.table {
	width: 100px;
}

/* 즐겨찾기 */
.btn-like {
	background: #005555;
	color: #fff;
	padding-top: 0px;
	width: 100px;
	border-radius: 30px;
	float: right;
}

a {
	text-decoration: none !important;
}
</style>

<!-- 자동완성 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./data.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>

<body style="overflow: hidden">
	<%
	LandDTO selectLand = (LandDTO) session.getAttribute("selectLand");
	%>

	<!-- header 자리 -->
	<jsp:include page="outerLine/header2.jsp" />
	<!-- header 자리 -->

	<div id="main">

		<div id="container">
			<div id="rvWrapper">
				<div id="roadview" style="width: 100%; height: 100%;"
					background-color=#005555></div>
				<!-- 로드뷰를 표시할 div 입니다 -->
				<div id="close" title="로드뷰닫기" onclick="closeRoadview()"
					style="margin-left: 750px;">
					<span class="img"></span>
				</div>
			</div>
			<div id="mapWrapper" style="margin-left: 170px;">
				<div id="map" style="width: 100%; height: 100%"></div>
				<!-- 지도를 표시할 div 입니다 -->
				<div id="roadviewControl" onclick="setRoadviewRoad()"
					style="left: 180px;"></div>
			</div>
		</div>

		<!-- 아파트 상세정보  -->
		<form
			action="BookmarkCon?apt_name=<%=selectLand.getApt_name()%>
   "
			method="post">
			<table class="table"
				style="width: 1200px; margin: 130px 180px 10px 10px;" align="right"
				; z-index="1";>
				<tbody>
					<tr class="info">
						<th style="padding: 1.5rem">아파트</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_name()%> <input
							type="submit" id="like_btn" class="btn-like" value="즐겨찾기">
						</td>
					</tr>
					<tr>
						<th style="padding: 1.5rem">매매가</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_price()%></td>
					</tr>
					<tr>
						<th style="padding: 1.5rem">주 소</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_addr()%>, <%=selectLand.getApt_addr2()%></td>

					</tr>
					<tr>
						<th style="padding: 1.5rem">평 형</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_info()%></td>
					</tr>
					<tr>
						<th style="padding: 1.5rem">추가정보</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_char()%></td>
					</tr>
				</tbody>
			</table>
		</form>

		<div class="map_wrap" style="margin-left: 250px;">
			<div id="map"
				style="width: 20%; height: 80%; position: relative; overflow: hidden;"></div>
			<ul id="category" style="float: left;">
				<li id="BK9" data-order="0"><span class="category_bg bank"></span>
					은행</li>
				<li id="MT1" data-order="1"><span class="category_bg mart"></span>
					마트</li>
				<li id="PM9" data-order="2"><span class="category_bg pharmacy"></span>
					약국</li>
				<li id="OL7" data-order="3"><span class="category_bg oil"></span>
					주유소</li>
				<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
					카페</li>
				<li id="CS2" data-order="5"><span class="category_bg store"></span>
					편의점</li>
			</ul>
			<div id="menu_wrap" class="bg_white" style="margin-left: 0px">
				<div class="option">
					<div>
						<form onsubmit="searchPlaces1(); return false;">
							키워드 : <input type="text" placeholder="아파트 검색" id="keyword"
								size="15">
							<button type="submit">검색하기</button>
						</form>
					</div>
				</div>
				<hr>
				<ul id="placesList"></ul>
				<div id="pagination"></div>
			</div>
		</div>

		<div>
			<%
			TPDTO selectTP = (TPDTO) session.getAttribute("selectTP");
			%>
			<table class="table"
				style="width: 1200px; margin: 130px 180px 10px 10px; text-align: center;"
				align="right" ; z-index="1"; >
				<thead>
					<tr>
						<th
							style="padding: 1.5rem; font-size: 25px; text-align: right; padding-right: 8rem;">실거래가
							그래프</th>
					</tr>
				</thead>
				<tbody>

					<tr>
						<td style="width: 800px; height: 500px;">
							<canvas id="myChart"></canvas>
						</td>
						<td>
							<table class="table table-striped"
								style="width: 450px; height: 200px; margin-top: 20px">
								<thead>
									<tr>
										<th scope="col">거래년도(년)</th>
										<th scope="col">전용면적(㎡)</th>
										<th scope="col">평균금액(만원)</th>
										<th scope="col">거래횟수(회)</th>

									</tr>
								</thead>
								<tbody>
									<tr>
										<th scope="row">2019</th>
										<td><%=selectTP.getTp_area()%></td>
										<td><%=selectTP.getTp_price_2019()%></td>
										<td><%=selectTP.getTp_count_2019()%></td>
									</tr>
									<tr>
										<th scope="row">2020</th>
										<td><%=selectTP.getTp_area()%></td>
										<td><%=selectTP.getTp_price_2020()%></td>
										<td><%=selectTP.getTp_count_2020()%></td>
									</tr>
									<tr>
										<th scope="row">2021</th>
										<td><%=selectTP.getTp_area()%></td>
										<td><%=selectTP.getTp_price_2021()%></td>
										<td><%=selectTP.getTp_count_2021()%></td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>

		</div>

	</div>
	<br>
	
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

	<script type="text/javascript"
		src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=1f53b7bbb802bba3aa54c56e58cbfc45&libraries=services"></script>
	<script type="text/javascript">
		var markers1 = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(
	<%=selectLand.getApt_geo()%>
		), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 마커를 생성합니다
		var imageSrc = 'img/apartment2.png', // 마커이미지의 주소입니다    
		imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
		imageOption = {
			offset : new kakao.maps.Point(27, 69)
		}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

		// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
				imageOption), markerPosition = new kakao.maps.LatLng(
	<%=selectLand.getApt_geo()%>
		); // 마커가 표시될 위치입니다

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition,
			image : markerImage
		// 마커이미지 설정 
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

		// 장소 검색 객체를 생성합니다
		var ps1 = new kakao.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});
		searchPlaces1();
		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces1() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				return false;
			}

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			ps1.keywordSearch(keyword, placesSearchCB1);
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB1(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				displayPlaces1(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}
		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces1(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker1(placePosition, i), itemEl = getListItem(
						i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title) {
					kakao.maps.event.addListener(marker, 'mouseover',
							function() {
								displayInfowindow(marker, title);
							});

					kakao.maps.event.addListener(marker, 'mouseout',
							function() {
								infowindow.close();
							});

					itemEl.onmouseover = function() {
						displayInfowindow(marker, title);
					};

					itemEl.onmouseout = function() {
						infowindow.close();
					};
				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {

			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'
					+ '</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker1(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers1.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers1.length; i++) {
				markers1[i].setMap(null);
			}
			markers1 = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
		var placeOverlay = new kakao.maps.CustomOverlay({
			zIndex : 1
		}), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		markers = [], // 마커를 담을 배열입니다
		currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
		var ps = new kakao.maps.services.Places(map);

		// 지도에 idle 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'idle', searchPlaces);

		// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
		contentNode.className = 'placeinfo_wrap';

		// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
		// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
		addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
		addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

		// 커스텀 오버레이 컨텐츠를 설정합니다
		placeOverlay.setContent(contentNode);

		// 각 카테고리에 클릭 이벤트를 등록합니다
		addCategoryClickEvent();

		// 엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
		function addEventHandle(target, type, callback) {
			if (target.addEventListener) {
				target.addEventListener(type, callback);
			} else {
				target.attachEvent('on' + type, callback);
			}
		}

		// 카테고리 검색을 요청하는 함수입니다
		function searchPlaces() {
			if (!currCategory) {
				return;
			}

			// 커스텀 오버레이를 숨깁니다 
			placeOverlay.setMap(null);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			ps.categorySearch(currCategory, placesSearchCB, {
				useMapBounds : true
			});
		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
				displayPlaces(data);
			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				// 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요

			} else if (status === kakao.maps.services.Status.ERROR) {
				// 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요

			}
		}

		// 지도에 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			var order = document.getElementById(currCategory).getAttribute(
					'data-order');

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var marker = addMarker(new kakao.maps.LatLng(places[i].y,
						places[i].x), order);

				// 마커와 검색결과 항목을 클릭 했을 때
				// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
				(function(marker, place) {
					kakao.maps.event.addListener(marker, 'click', function() {
						displayPlaceInfo(place);
					});
				})(marker, places[i]);
			}
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, order) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(27, 28), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(72, 208), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(46, (order * 36)), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(11, 28)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
		function displayPlaceInfo(place) {
			var content = '<div class="placeinfo">'
					+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
					+ place.place_name + '</a>';

			if (place.road_address_name) {
				content += '    <span title="' + place.road_address_name + '">'
						+ place.road_address_name
						+ '</span>'
						+ '  <span class="jibun" title="' + place.address_name + '">(지번 : '
						+ place.address_name + ')</span>';
			} else {
				content += '    <span title="' + place.address_name + '">'
						+ place.address_name + '</span>';
			}

			content += '    <span class="tel">' + place.phone + '</span>'
					+ '</div>' + '<div class="after"></div>';

			contentNode.innerHTML = content;
			placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
			placeOverlay.setMap(map);
		}

		// 각 카테고리에 클릭 이벤트를 등록합니다
		function addCategoryClickEvent() {
			var category = document.getElementById('category'), children = category.children;

			for (var i = 0; i < children.length; i++) {
				children[i].onclick = onClickCategory;
			}
		}

		// 카테고리를 클릭했을 때 호출되는 함수입니다
		function onClickCategory() {
			var id = this.id, className = this.className;

			placeOverlay.setMap(null);

			if (className === 'on') {
				currCategory = '';
				changeCategoryClass();
				removeMarker();
			} else {
				currCategory = id;
				changeCategoryClass(this);
				searchPlaces();
			}
		}

		// 클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
		function changeCategoryClass(el) {
			var category = document.getElementById('category'), children = category.children, i;

			for (i = 0; i < children.length; i++) {
				children[i].className = '';
			}

			if (el) {
				el.className = 'on';
			}
		}
		var overlayOn = false, // 지도 위에 로드뷰 오버레이가 추가된 상태를 가지고 있을 변수
		container = document.getElementById('container'), // 지도와 로드뷰를 감싸고 있는 div 입니다
		mapWrapper = document.getElementById('mapWrapper'), // 지도를 감싸고 있는 div 입니다
		mapContainer = document.getElementById('map'), // 지도를 표시할 div 입니다 
		rvContainer = document.getElementById('roadview'); //로드뷰를 표시할 div 입니다

		var mapCenter = new kakao.maps.LatLng(
		<%=selectLand.getApt_geo()%>
		), // 지도의 중심좌표
		mapOption = {
			center : mapCenter, // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 로드뷰 객체를 생성합니다 
		var rv = new kakao.maps.Roadview(rvContainer);

		// 좌표로부터 로드뷰 파노라마 ID를 가져올 로드뷰 클라이언트 객체를 생성합니다 
		var rvClient = new kakao.maps.RoadviewClient();

		// 로드뷰에 좌표가 바뀌었을 때 발생하는 이벤트를 등록합니다 
		kakao.maps.event.addListener(rv, 'position_changed', function() {

			// 현재 로드뷰의 위치 좌표를 얻어옵니다 
			var rvPosition = rv.getPosition();

			// 지도의 중심을 현재 로드뷰의 위치로 설정합니다
			map.setCenter(rvPosition);

			// 지도 위에 로드뷰 도로 오버레이가 추가된 상태이면
			if (overlayOn) {
				// 마커의 위치를 현재 로드뷰의 위치로 설정합니다
				marker2.setPosition(rvPosition);
			}
		});

		// 마커 이미지를 생성합니다
		var markImage = new kakao.maps.MarkerImage(
				'https://t1.daumcdn.net/localimg/localimages/07/2018/pc/roadview_minimap_wk_2018.png',
				new kakao.maps.Size(26, 46), {
					// 스프라이트 이미지를 사용합니다.
					// 스프라이트 이미지 전체의 크기를 지정하고
					spriteSize : new kakao.maps.Size(1666, 168),
					// 사용하고 싶은 영역의 좌상단 좌표를 입력합니다.
					// background-position으로 지정하는 값이며 부호는 반대입니다.
					spriteOrigin : new kakao.maps.Point(705, 114),
					offset : new kakao.maps.Point(13, 46)
				});

		// 드래그가 가능한 마커를 생성합니다
		var marker2 = new kakao.maps.Marker({
			image : markImage,
			position : mapCenter,
			draggable : true
		});

		// 마커에 dragend 이벤트를 등록합니다
		kakao.maps.event.addListener(marker2, 'dragend', function(mouseEvent) {

			// 현재 마커가 놓인 자리의 좌표입니다 
			var position = marker2.getPosition();

			// 마커가 놓인 위치를 기준으로 로드뷰를 설정합니다
			toggleRoadview(position);
		});

		//지도에 클릭 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

			// 지도 위에 로드뷰 도로 오버레이가 추가된 상태가 아니면 클릭이벤트를 무시합니다 
			if (!overlayOn) {
				return;
			}

			// 클릭한 위치의 좌표입니다 
			var position = mouseEvent.latLng;

			// 마커를 클릭한 위치로 옮깁니다
			marker2.setPosition(position);

			// 클락한 위치를 기준으로 로드뷰를 설정합니다
			toggleRoadview(position);
		});

		// 전달받은 좌표(position)에 가까운 로드뷰의 파노라마 ID를 추출하여
		// 로드뷰를 설정하는 함수입니다
		function toggleRoadview(position) {
			rvClient.getNearestPanoId(position, 50, function(panoId) {
				// 파노라마 ID가 null 이면 로드뷰를 숨깁니다
				if (panoId === null) {
					toggleMapWrapper(true, position);
				} else {
					toggleMapWrapper(false, position);

					// panoId로 로드뷰를 설정합니다
					rv.setPanoId(panoId, position);
				}
			});
		}

		// 지도를 감싸고 있는 div의 크기를 조정하는 함수입니다
		function toggleMapWrapper(active, position) {
			if (active) {

				// 지도를 감싸고 있는 div의 너비가 100%가 되도록 class를 변경합니다 
				container.className = '';

				// 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
				map.relayout();

				// 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
				map.setCenter(position);
			} else {

				// 지도만 보여지고 있는 상태이면 지도의 너비가 50%가 되도록 class를 변경하여
				// 로드뷰가 함께 표시되게 합니다
				if (container.className.indexOf('view_roadview') === -1) {
					container.className = 'view_roadview';

					// 지도의 크기가 변경되었기 때문에 relayout 함수를 호출합니다
					map.relayout();

					// 지도의 너비가 변경될 때 지도중심을 입력받은 위치(position)로 설정합니다
					map.setCenter(position);
				}
			}
		}

		// 지도 위의 로드뷰 도로 오버레이를 추가,제거하는 함수입니다
		function toggleOverlay(active) {
			if (active) {
				overlayOn = true;

				// 지도 위에 로드뷰 도로 오버레이를 추가합니다
				map.addOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

				// 지도 위에 마커를 표시합니다
				marker2.setMap(map);

				// 마커의 위치를 지도 중심으로 설정합니다 
				marker2.setPosition(map.getCenter());

				// 로드뷰의 위치를 지도 중심으로 설정합니다
				toggleRoadview(map.getCenter());
			} else {
				overlayOn = false;

				// 지도 위의 로드뷰 도로 오버레이를 제거합니다
				map.removeOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

				// 지도 위의 마커를 제거합니다
				marker2.setMap(null);
			}
		}

		// 지도 위의 로드뷰 버튼을 눌렀을 때 호출되는 함수입니다
		function setRoadviewRoad() {
			var control = document.getElementById('roadviewControl');

			// 버튼이 눌린 상태가 아니면
			if (control.className.indexOf('active') === -1) {

				control.className = 'active';

				// 로드뷰 도로 오버레이가 보이게 합니다
				toggleOverlay(true);
			} else {
				control.className = '';

				// 로드뷰 도로 오버레이를 제거합니다
				toggleOverlay(false);
			}
		}

		// 로드뷰에서 X버튼을 눌렀을 때 로드뷰를 지도 뒤로 숨기는 함수입니다
		function closeRoadview() {
			var position = marker2.getPosition();
			toggleMapWrapper(true, position);
		}

		// 그래프 관련 스크립트
		var context = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(
				context,
				{
					type : 'bar', // 차트의 형태
					data : { // 차트에 들어갈 데이터
						labels : [
						//x 축
						'2019', '2020', '2021' ],
						datasets : [ { //데이터
							label : '실거래가', //차트 제목
							fill : false, // line 형태일 때, 선 안쪽을 채우는지 안채우는지
							data : [
									<%=selectTP.getTp_price_2019()%>
										,
									<%=selectTP.getTp_price_2020()%>
										,
									<%=selectTP.getTp_price_2021()%>
										//x축 label에 대응되는 데이터 값
							],
							backgroundColor : [
							//색상
							'rgba(75, 192, 192, 0.2)',
									'rgba(255, 159, 64, 0.2)',
									'rgba(54, 162, 235, 0.2)'

							],
							borderColor : [
							//경계선 색상
							'rgba(75, 192, 192, 1)', 'rgba(255, 159, 64, 1)',
									'rgba(54, 162, 235, 1)' ],
							borderWidth : 1
						//경계선 굵기
						} ]
					},
					options : {

						hover : {
							animationDuration : 0
						},
						animation : {
							duration : 1,
							onComplete : function() {
								var chartInstance = this.chart, ctx = chartInstance.ctx;
								ctx.font = Chart.helpers
										.fontString(
												Chart.defaults.global.defaultFontSize,
												Chart.defaults.global.defaultFontStyle,
												Chart.defaults.global.defaultFontFamily);
								ctx.fillStyle = 'purple';
								ctx.textAlign = 'center';
								ctx.textBaseline = 'bottom';

								this.data.datasets
										.forEach(function(dataset, i) {
											var meta = chartInstance.controller
													.getDatasetMeta(i);
											meta.data.forEach(function(bar,
													index) {
												var data = dataset.data[index];
												ctx.fillText(data,
														bar._model.x,
														bar._model.y - 5);
											});
										});
							}
						},
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true,
									max : 100000,
									stepSize : 10000

								}
							} ]
						}
					}
				});
	</script>	

</body>
</html>
