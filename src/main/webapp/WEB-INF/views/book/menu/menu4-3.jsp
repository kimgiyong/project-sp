<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>오시는 길</title>
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/menuCss/menu4-3.css">
	<style type="text/css">
		#menu4-3back h2{
			text-align: left;
			width: 1000px;
			border: 1px pink solid;
			padding-top: 50px;
			padding-bottom:20px;
			font-family: "굴림","맑은 고딕";
			font-weight: normal;
			color: darkred;
		}
	</style>
</head>

<body>
	<%@ include file="../home.jsp"%>
	<section id="menu4-3back">
	<h2> * 좋은향 도서관</h2>
		<div id="map"></div>
	</section>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=52ed07a2a9a6bdc509cbde1cb8741f6b"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new daum.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new daum.maps.Map(container, options);
	</script>
</body>
</html>