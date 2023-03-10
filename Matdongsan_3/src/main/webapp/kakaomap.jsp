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
	font-family: 'Malgun Gothic', dotum, '??????', sans-serif;
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

/* ???????????? */
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

<!-- ???????????? -->
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

	<!-- header ?????? -->
	<jsp:include page="outerLine/header2.jsp" />
	<!-- header ?????? -->

	<div id="main">

		<div id="container">
			<div id="rvWrapper">
				<div id="roadview" style="width: 100%; height: 100%;"
					background-color=#005555></div>
				<!-- ???????????? ????????? div ????????? -->
				<div id="close" title="???????????????" onclick="closeRoadview()"
					style="margin-left: 750px;">
					<span class="img"></span>
				</div>
			</div>
			<div id="mapWrapper" style="margin-left: 170px;">
				<div id="map" style="width: 100%; height: 100%"></div>
				<!-- ????????? ????????? div ????????? -->
				<div id="roadviewControl" onclick="setRoadviewRoad()"
					style="left: 180px;"></div>
			</div>
		</div>

		<!-- ????????? ????????????  -->
		<form
			action="BookmarkCon?apt_name=<%=selectLand.getApt_name()%>
   "
			method="post">
			<table class="table"
				style="width: 1200px; margin: 130px 180px 10px 10px;" align="right"
				; z-index="1";>
				<tbody>
					<tr class="info">
						<th style="padding: 1.5rem">?????????</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_name()%> <input
							type="submit" id="like_btn" class="btn-like" value="????????????">
						</td>
					</tr>
					<tr>
						<th style="padding: 1.5rem">?????????</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_price()%></td>
					</tr>
					<tr>
						<th style="padding: 1.5rem">??? ???</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_addr()%>, <%=selectLand.getApt_addr2()%></td>

					</tr>
					<tr>
						<th style="padding: 1.5rem">??? ???</th>
						<td style="padding: 1.5rem"><%=selectLand.getApt_info()%></td>
					</tr>
					<tr>
						<th style="padding: 1.5rem">????????????</th>
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
					??????</li>
				<li id="MT1" data-order="1"><span class="category_bg mart"></span>
					??????</li>
				<li id="PM9" data-order="2"><span class="category_bg pharmacy"></span>
					??????</li>
				<li id="OL7" data-order="3"><span class="category_bg oil"></span>
					?????????</li>
				<li id="CE7" data-order="4"><span class="category_bg cafe"></span>
					??????</li>
				<li id="CS2" data-order="5"><span class="category_bg store"></span>
					?????????</li>
			</ul>
			<div id="menu_wrap" class="bg_white" style="margin-left: 0px">
				<div class="option">
					<div>
						<form onsubmit="searchPlaces1(); return false;">
							????????? : <input type="text" placeholder="????????? ??????" id="keyword"
								size="15">
							<button type="submit">????????????</button>
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
							style="padding: 1.5rem; font-size: 25px; text-align: right; padding-right: 8rem;">????????????
							?????????</th>
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
										<th scope="col">????????????(???)</th>
										<th scope="col">????????????(???)</th>
										<th scope="col">????????????(??????)</th>
										<th scope="col">????????????(???)</th>

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


	<!-- footer ?????? -->
	<jsp:include page="outerLine/footer.jsp" />
	<!-- footer ?????? -->

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

		var mapContainer = document.getElementById('map'), // ????????? ????????? div 
		mapOption = {
			center : new kakao.maps.LatLng(
	<%=selectLand.getApt_geo()%>
		), // ????????? ????????????
			level : 3
		// ????????? ?????? ??????
		};

		// ????????? ???????????????    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// ????????? ???????????????
		var imageSrc = 'img/apartment2.png', // ?????????????????? ???????????????    
		imageSize = new kakao.maps.Size(64, 69), // ?????????????????? ???????????????
		imageOption = {
			offset : new kakao.maps.Point(27, 69)
		}; // ?????????????????? ???????????????. ????????? ????????? ???????????? ????????? ???????????? ????????? ???????????????.

		// ????????? ?????????????????? ????????? ?????? ?????????????????? ???????????????
		var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
				imageOption), markerPosition = new kakao.maps.LatLng(
	<%=selectLand.getApt_geo()%>
		); // ????????? ????????? ???????????????

		// ????????? ???????????????
		var marker = new kakao.maps.Marker({
			position : markerPosition,
			image : markerImage
		// ??????????????? ?????? 
		});

		// ????????? ?????? ?????? ??????????????? ???????????????
		marker.setMap(map);

		// ?????? ?????? ????????? ???????????????
		var ps1 = new kakao.maps.services.Places();

		// ?????? ?????? ???????????? ????????? ???????????? ??? ???????????? ????????? ?????????????????? ???????????????
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});
		searchPlaces1();
		// ????????? ????????? ???????????? ???????????????
		function searchPlaces1() {

			var keyword = document.getElementById('keyword').value;

			if (!keyword.replace(/^\s+|\s+$/g, '')) {
				return false;
			}

			// ???????????? ????????? ?????? ???????????? ??????????????? ???????????????
			ps1.keywordSearch(keyword, placesSearchCB1);
		}

		// ??????????????? ???????????? ??? ???????????? ???????????? ?????????
		function placesSearchCB1(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// ??????????????? ????????? ???????????????
				// ?????? ????????? ????????? ???????????????
				displayPlaces1(data);

				// ????????? ????????? ???????????????
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

				alert('?????? ????????? ???????????? ????????????.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {

				alert('?????? ?????? ??? ????????? ??????????????????.');
				return;

			}
		}
		// ?????? ?????? ????????? ????????? ???????????? ???????????????
		function displayPlaces1(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// ?????? ?????? ????????? ????????? ???????????? ???????????????
			removeAllChildNods(listEl);

			// ????????? ???????????? ?????? ????????? ???????????????
			removeMarker();

			for (var i = 0; i < places.length; i++) {

				// ????????? ???????????? ????????? ???????????????
				var placePosition = new kakao.maps.LatLng(places[i].y,
						places[i].x), marker = addMarker1(placePosition, i), itemEl = getListItem(
						i, places[i]); // ?????? ?????? ?????? Element??? ???????????????

				// ????????? ?????? ????????? ???????????? ?????? ????????? ?????????????????????
				// LatLngBounds ????????? ????????? ???????????????
				bounds.extend(placePosition);

				// ????????? ???????????? ????????? mouseover ?????????
				// ?????? ????????? ?????????????????? ???????????? ???????????????
				// mouseout ?????? ?????? ?????????????????? ????????????
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

			// ???????????? ???????????? ???????????? ?????? Element??? ???????????????
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// ????????? ?????? ????????? ???????????? ?????? ????????? ??????????????????
			map.setBounds(bounds);
		}

		// ???????????? ????????? Element??? ???????????? ???????????????
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

		// ????????? ???????????? ?????? ?????? ????????? ???????????? ???????????????
		function addMarker1(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ?????? ????????? url, ??????????????? ???????????? ?????????
			imageSize = new kakao.maps.Size(36, 37), // ?????? ???????????? ??????
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // ??????????????? ???????????? ??????
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // ??????????????? ????????? ??? ????????? ????????? ????????? ??????
				offset : new kakao.maps.Point(13, 37)
			// ?????? ????????? ???????????? ????????? ???????????? ??????
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // ????????? ??????
				image : markerImage
			});

			marker.setMap(map); // ?????? ?????? ????????? ???????????????
			markers1.push(marker); // ????????? ????????? ????????? ???????????????

			return marker;
		}

		// ?????? ?????? ???????????? ?????? ????????? ?????? ???????????????
		function removeMarker() {
			for (var i = 0; i < markers1.length; i++) {
				markers1[i].setMap(null);
			}
			markers1 = [];
		}

		// ???????????? ?????? ????????? ?????????????????? ????????? ???????????????
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// ????????? ????????? ?????????????????? ???????????????
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

		// ???????????? ?????? ?????? ????????? ???????????? ??? ???????????? ???????????????
		// ?????????????????? ???????????? ???????????????
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title
					+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// ???????????? ????????? ?????? Element??? ???????????? ???????????????
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}
		var placeOverlay = new kakao.maps.CustomOverlay({
			zIndex : 1
		}), contentNode = document.createElement('div'), // ????????? ??????????????? ????????? ???????????? ????????? 
		markers = [], // ????????? ?????? ???????????????
		currCategory = ''; // ?????? ????????? ??????????????? ????????? ?????? ???????????????
		var ps = new kakao.maps.services.Places(map);

		// ????????? idle ???????????? ???????????????
		kakao.maps.event.addListener(map, 'idle', searchPlaces);

		// ????????? ??????????????? ????????? ????????? css class??? ??????????????? 
		contentNode.className = 'placeinfo_wrap';

		// ????????? ??????????????? ????????? ????????? mousedown, touchstart ???????????? ???????????????
		// ?????? ????????? ???????????? ???????????? ????????? ????????? ???????????? kakao.maps.event.preventMap ???????????? ??????????????? 
		addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
		addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

		// ????????? ???????????? ???????????? ???????????????
		placeOverlay.setContent(contentNode);

		// ??? ??????????????? ?????? ???????????? ???????????????
		addCategoryClickEvent();

		// ??????????????? ????????? ???????????? ???????????? ???????????????
		function addEventHandle(target, type, callback) {
			if (target.addEventListener) {
				target.addEventListener(type, callback);
			} else {
				target.attachEvent('on' + type, callback);
			}
		}

		// ???????????? ????????? ???????????? ???????????????
		function searchPlaces() {
			if (!currCategory) {
				return;
			}

			// ????????? ??????????????? ???????????? 
			placeOverlay.setMap(null);

			// ????????? ???????????? ?????? ????????? ???????????????
			removeMarker();

			ps.categorySearch(currCategory, placesSearchCB, {
				useMapBounds : true
			});
		}

		// ??????????????? ???????????? ??? ???????????? ???????????? ?????????
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// ??????????????? ????????? ??????????????? ????????? ????????? ???????????????
				displayPlaces(data);
			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				// ??????????????? ???????????? ????????? ????????? ????????? ????????? ????????? ?????????

			} else if (status === kakao.maps.services.Status.ERROR) {
				// ????????? ?????? ??????????????? ????????? ?????? ?????? ????????? ????????? ????????? ????????? ????????? ?????????

			}
		}

		// ????????? ????????? ???????????? ???????????????
		function displayPlaces(places) {

			// ????????? ??????????????? ???????????? ????????? ???????????????
			// ??? ????????? ??????????????? ?????????????????? ????????? ??????????????? ???????????????
			var order = document.getElementById(currCategory).getAttribute(
					'data-order');

			for (var i = 0; i < places.length; i++) {

				// ????????? ???????????? ????????? ???????????????
				var marker = addMarker(new kakao.maps.LatLng(places[i].y,
						places[i].x), order);

				// ????????? ???????????? ????????? ?????? ?????? ???
				// ??????????????? ??????????????? ?????? ???????????? ???????????????
				(function(marker, place) {
					kakao.maps.event.addListener(marker, 'click', function() {
						displayPlaceInfo(place);
					});
				})(marker, places[i]);
			}
		}

		// ????????? ???????????? ?????? ?????? ????????? ???????????? ???????????????
		function addMarker(position, order) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png', // ?????? ????????? url, ??????????????? ???????????? ?????????
			imageSize = new kakao.maps.Size(27, 28), // ?????? ???????????? ??????
			imgOptions = {
				spriteSize : new kakao.maps.Size(72, 208), // ??????????????? ???????????? ??????
				spriteOrigin : new kakao.maps.Point(46, (order * 36)), // ??????????????? ????????? ??? ????????? ????????? ????????? ??????
				offset : new kakao.maps.Point(11, 28)
			// ?????? ????????? ???????????? ????????? ???????????? ??????
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // ????????? ??????
				image : markerImage
			});

			marker.setMap(map); // ?????? ?????? ????????? ???????????????
			markers.push(marker); // ????????? ????????? ????????? ???????????????

			return marker;
		}

		// ?????? ?????? ???????????? ?????? ????????? ?????? ???????????????
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// ????????? ????????? ?????? ?????? ??????????????? ????????? ??????????????? ???????????? ???????????????
		function displayPlaceInfo(place) {
			var content = '<div class="placeinfo">'
					+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
					+ place.place_name + '</a>';

			if (place.road_address_name) {
				content += '    <span title="' + place.road_address_name + '">'
						+ place.road_address_name
						+ '</span>'
						+ '  <span class="jibun" title="' + place.address_name + '">(?????? : '
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

		// ??? ??????????????? ?????? ???????????? ???????????????
		function addCategoryClickEvent() {
			var category = document.getElementById('category'), children = category.children;

			for (var i = 0; i < children.length; i++) {
				children[i].onclick = onClickCategory;
			}
		}

		// ??????????????? ???????????? ??? ???????????? ???????????????
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

		// ????????? ?????????????????? ????????? ???????????? ???????????? ???????????????
		function changeCategoryClass(el) {
			var category = document.getElementById('category'), children = category.children, i;

			for (i = 0; i < children.length; i++) {
				children[i].className = '';
			}

			if (el) {
				el.className = 'on';
			}
		}
		var overlayOn = false, // ?????? ?????? ????????? ??????????????? ????????? ????????? ????????? ?????? ??????
		container = document.getElementById('container'), // ????????? ???????????? ????????? ?????? div ?????????
		mapWrapper = document.getElementById('mapWrapper'), // ????????? ????????? ?????? div ?????????
		mapContainer = document.getElementById('map'), // ????????? ????????? div ????????? 
		rvContainer = document.getElementById('roadview'); //???????????? ????????? div ?????????

		var mapCenter = new kakao.maps.LatLng(
		<%=selectLand.getApt_geo()%>
		), // ????????? ????????????
		mapOption = {
			center : mapCenter, // ????????? ????????????
			level : 3
		// ????????? ?????? ??????
		};

		// ????????? ????????? ??????????????? 
		var rv = new kakao.maps.Roadview(rvContainer);

		// ??????????????? ????????? ???????????? ID??? ????????? ????????? ??????????????? ????????? ??????????????? 
		var rvClient = new kakao.maps.RoadviewClient();

		// ???????????? ????????? ???????????? ??? ???????????? ???????????? ??????????????? 
		kakao.maps.event.addListener(rv, 'position_changed', function() {

			// ?????? ???????????? ?????? ????????? ??????????????? 
			var rvPosition = rv.getPosition();

			// ????????? ????????? ?????? ???????????? ????????? ???????????????
			map.setCenter(rvPosition);

			// ?????? ?????? ????????? ?????? ??????????????? ????????? ????????????
			if (overlayOn) {
				// ????????? ????????? ?????? ???????????? ????????? ???????????????
				marker2.setPosition(rvPosition);
			}
		});

		// ?????? ???????????? ???????????????
		var markImage = new kakao.maps.MarkerImage(
				'https://t1.daumcdn.net/localimg/localimages/07/2018/pc/roadview_minimap_wk_2018.png',
				new kakao.maps.Size(26, 46), {
					// ??????????????? ???????????? ???????????????.
					// ??????????????? ????????? ????????? ????????? ????????????
					spriteSize : new kakao.maps.Size(1666, 168),
					// ???????????? ?????? ????????? ????????? ????????? ???????????????.
					// background-position?????? ???????????? ????????? ????????? ???????????????.
					spriteOrigin : new kakao.maps.Point(705, 114),
					offset : new kakao.maps.Point(13, 46)
				});

		// ???????????? ????????? ????????? ???????????????
		var marker2 = new kakao.maps.Marker({
			image : markImage,
			position : mapCenter,
			draggable : true
		});

		// ????????? dragend ???????????? ???????????????
		kakao.maps.event.addListener(marker2, 'dragend', function(mouseEvent) {

			// ?????? ????????? ?????? ????????? ??????????????? 
			var position = marker2.getPosition();

			// ????????? ?????? ????????? ???????????? ???????????? ???????????????
			toggleRoadview(position);
		});

		//????????? ?????? ???????????? ???????????????
		kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

			// ?????? ?????? ????????? ?????? ??????????????? ????????? ????????? ????????? ?????????????????? ??????????????? 
			if (!overlayOn) {
				return;
			}

			// ????????? ????????? ??????????????? 
			var position = mouseEvent.latLng;

			// ????????? ????????? ????????? ????????????
			marker2.setPosition(position);

			// ????????? ????????? ???????????? ???????????? ???????????????
			toggleRoadview(position);
		});

		// ???????????? ??????(position)??? ????????? ???????????? ???????????? ID??? ????????????
		// ???????????? ???????????? ???????????????
		function toggleRoadview(position) {
			rvClient.getNearestPanoId(position, 50, function(panoId) {
				// ???????????? ID??? null ?????? ???????????? ????????????
				if (panoId === null) {
					toggleMapWrapper(true, position);
				} else {
					toggleMapWrapper(false, position);

					// panoId??? ???????????? ???????????????
					rv.setPanoId(panoId, position);
				}
			});
		}

		// ????????? ????????? ?????? div??? ????????? ???????????? ???????????????
		function toggleMapWrapper(active, position) {
			if (active) {

				// ????????? ????????? ?????? div??? ????????? 100%??? ????????? class??? ??????????????? 
				container.className = '';

				// ????????? ????????? ??????????????? ????????? relayout ????????? ???????????????
				map.relayout();

				// ????????? ????????? ????????? ??? ??????????????? ???????????? ??????(position)??? ???????????????
				map.setCenter(position);
			} else {

				// ????????? ???????????? ?????? ???????????? ????????? ????????? 50%??? ????????? class??? ????????????
				// ???????????? ?????? ???????????? ?????????
				if (container.className.indexOf('view_roadview') === -1) {
					container.className = 'view_roadview';

					// ????????? ????????? ??????????????? ????????? relayout ????????? ???????????????
					map.relayout();

					// ????????? ????????? ????????? ??? ??????????????? ???????????? ??????(position)??? ???????????????
					map.setCenter(position);
				}
			}
		}

		// ?????? ?????? ????????? ?????? ??????????????? ??????,???????????? ???????????????
		function toggleOverlay(active) {
			if (active) {
				overlayOn = true;

				// ?????? ?????? ????????? ?????? ??????????????? ???????????????
				map.addOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

				// ?????? ?????? ????????? ???????????????
				marker2.setMap(map);

				// ????????? ????????? ?????? ???????????? ??????????????? 
				marker2.setPosition(map.getCenter());

				// ???????????? ????????? ?????? ???????????? ???????????????
				toggleRoadview(map.getCenter());
			} else {
				overlayOn = false;

				// ?????? ?????? ????????? ?????? ??????????????? ???????????????
				map.removeOverlayMapTypeId(kakao.maps.MapTypeId.ROADVIEW);

				// ?????? ?????? ????????? ???????????????
				marker2.setMap(null);
			}
		}

		// ?????? ?????? ????????? ????????? ????????? ??? ???????????? ???????????????
		function setRoadviewRoad() {
			var control = document.getElementById('roadviewControl');

			// ????????? ?????? ????????? ?????????
			if (control.className.indexOf('active') === -1) {

				control.className = 'active';

				// ????????? ?????? ??????????????? ????????? ?????????
				toggleOverlay(true);
			} else {
				control.className = '';

				// ????????? ?????? ??????????????? ???????????????
				toggleOverlay(false);
			}
		}

		// ??????????????? X????????? ????????? ??? ???????????? ?????? ?????? ????????? ???????????????
		function closeRoadview() {
			var position = marker2.getPosition();
			toggleMapWrapper(true, position);
		}

		// ????????? ?????? ????????????
		var context = document.getElementById('myChart').getContext('2d');
		var myChart = new Chart(
				context,
				{
					type : 'bar', // ????????? ??????
					data : { // ????????? ????????? ?????????
						labels : [
						//x ???
						'2019', '2020', '2021' ],
						datasets : [ { //?????????
							label : '????????????', //?????? ??????
							fill : false, // line ????????? ???, ??? ????????? ???????????? ???????????????
							data : [
									<%=selectTP.getTp_price_2019()%>
										,
									<%=selectTP.getTp_price_2020()%>
										,
									<%=selectTP.getTp_price_2021()%>
										//x??? label??? ???????????? ????????? ???
							],
							backgroundColor : [
							//??????
							'rgba(75, 192, 192, 0.2)',
									'rgba(255, 159, 64, 0.2)',
									'rgba(54, 162, 235, 0.2)'

							],
							borderColor : [
							//????????? ??????
							'rgba(75, 192, 192, 1)', 'rgba(255, 159, 64, 1)',
									'rgba(54, 162, 235, 1)' ],
							borderWidth : 1
						//????????? ??????
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
