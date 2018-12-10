<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>오시는 길</title>
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/menuCss/menu4-3.css">
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=52ed07a2a9a6bdc509cbde1cb8741f6b&libraries=services,clusterer,drawing"></script>
</head>
<!-- https://developers.kakao.com/apps/253792/settings/general 나중에 이 곳에서 도메인 주소 바꾸기 -->
<body>
	<%@ include file="../home.jsp"%>
	<section id="menu4-3back">
		<h2>* 좋은향 도서관</h2>
		<div id="map"></div>
		
		<div id="mapinfo">
			<div class="station_wayout">
	            <h4 class="tit_findway">지하철역</h4>
	            <ul class="list_wayout">
	                    <li>
	                        <em class="txt_station"><a href="http://map.daum.net?subwayId=SES1702" target="_blank" class="link_station" data-logtarget="" data-logevent="waytogo,subway">가산디지털단지역</a></em>
	                            <span class="ico_traffic seoul_line1_small">1호선</span><!-- 호선별 대체 텍스트 부탁 드립니다. -->
	                            <span class="ico_traffic seoul_line7_small">7호선</span><!-- 호선별 대체 텍스트 부탁 드립니다. -->
	                        <span class="bg_bar">|</span>
	                        <span class="txt_wayout"><span class="num_wayout">6</span>번 출구 <span class="num_wayout txt_walk">도보 3분</span></span>
	                    </li>
	                    <li>
	                        <em class="txt_station"><a href="http://map.daum.net?subwayId=SES2747" target="_blank" class="link_station" data-logtarget="" data-logevent="waytogo,subway">남구로역</a></em>
	                            <span class="ico_traffic seoul_line7_small">7호선</span><!-- 호선별 대체 텍스트 부탁 드립니다. -->
	                        <span class="bg_bar">|</span>
	                        <span class="txt_wayout"><span class="num_wayout">3</span>번 출구 <span class="num_wayout txt_walk">도보 15분</span></span>
	                    </li>
	            </ul>
	        </div>
			<div class="station_ride check_list">
            <h4 class="tit_findway">버스정류장</h4>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS221093" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역1호선</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18240) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 45m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_blue">간선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">571<span class="bg_bar">|</span>652<span class="bg_bar">|</span>653</span>
                                    <a href="http://map.daum.net?busStopId=BS221093" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5012<span class="bg_bar">|</span>5528</span>
                                    <a href="http://map.daum.net?busStopId=BS221093" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=11180511009" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18106) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 82m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_blue">간선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">571<span class="bg_bar">|</span>652<span class="bg_bar">|</span>653</span>
                                    <a href="http://map.daum.net?busStopId=11180511009" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5012<span class="bg_bar">|</span>5528</span>
                                    <a href="http://map.daum.net?busStopId=11180511009" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_normal">일반</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">75</span>
                                    <a href="http://map.daum.net?busStopId=11180511009" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS167969" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역1호선앞</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18594) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 102m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천05</span>
                                    <a href="http://map.daum.net?busStopId=BS167969" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS117803" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역1호선</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18797) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 110m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천05</span>
                                    <a href="http://map.daum.net?busStopId=BS117803" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=11180511011" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18107) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 115m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_blue">간선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">571<span class="bg_bar">|</span>652<span class="bg_bar">|</span>653</span>
                                    <a href="http://map.daum.net?busStopId=11180511011" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5012<span class="bg_bar">|</span>5528</span>
                                    <a href="http://map.daum.net?busStopId=11180511011" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_normal">일반</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">21<span class="bg_bar">|</span>75</span>
                                    <a href="http://map.daum.net?busStopId=11180511011" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS115742" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18503) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 133m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천03</span>
                                    <a href="http://map.daum.net?busStopId=BS115742" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=12180511001" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18226) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 150m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5616<span class="bg_bar">|</span>5712</span>
                                    <a href="http://map.daum.net?busStopId=12180511001" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천03</span>
                                    <a href="http://map.daum.net?busStopId=12180511001" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS15795" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18209) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 156m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5537<span class="bg_bar">|</span>5616<span class="bg_bar">|</span>5712</span>
                                    <a href="http://map.daum.net?busStopId=BS15795" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_airport">공항</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">6004</span>
                                    <a href="http://map.daum.net?busStopId=BS15795" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS419435" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18604) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 157m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천01-1</span>
                                    <a href="http://map.daum.net?busStopId=BS419435" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS423610" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">한국건설생활환경시험연구원</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18798) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 203m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천05</span>
                                    <a href="http://map.daum.net?busStopId=BS423610" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS417173" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18603) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 246m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천07</span>
                                    <a href="http://map.daum.net?busStopId=BS417173" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS167970" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">KCC웰츠밸리</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18617) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 248m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천05</span>
                                    <a href="http://map.daum.net?busStopId=BS167970" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS419437" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18605) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 250m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천01-1</span>
                                    <a href="http://map.daum.net?busStopId=BS419437" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=126894" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">국민연금관리공단앞</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18208) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 251m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5537</span>
                                    <a href="http://map.daum.net?busStopId=126894" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천07</span>
                                    <a href="http://map.daum.net?busStopId=126894" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS110724" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">7호선가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18999) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 265m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_normal">일반</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">21<span class="bg_bar">|</span>75</span>
                                    <a href="http://map.daum.net?busStopId=BS110724" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_town">마을</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">금천05</span>
                                    <a href="http://map.daum.net?busStopId=BS110724" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS68286" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">가산디지털단지역</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18778) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 271m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_airport">공항</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">6004</span>
                                    <a href="http://map.daum.net?busStopId=BS68286" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS168921" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">디지털3단지.영창실업</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18104) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 272m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_blue">간선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">571<span class="bg_bar">|</span>652<span class="bg_bar">|</span>653</span>
                                    <a href="http://map.daum.net?busStopId=BS168921" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5012<span class="bg_bar">|</span>5528</span>
                                    <a href="http://map.daum.net?busStopId=BS168921" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_normal">일반</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">75</span>
                                    <a href="http://map.daum.net?busStopId=BS168921" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=BS168928" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">디지털3단지.영창실업</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18222) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 283m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_blue">간선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">571</span>
                                    <a href="http://map.daum.net?busStopId=BS168928" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=11180511015" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">디지털3단지.(주)로옴코리아</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18109) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 283m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_blue">간선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">571<span class="bg_bar">|</span>652<span class="bg_bar">|</span>653</span>
                                    <a href="http://map.daum.net?busStopId=11180511015" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5012<span class="bg_bar">|</span>5528</span>
                                    <a href="http://map.daum.net?busStopId=11180511015" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
                <div class="ride_wayout"><!-- 지도에서 일치하는 정류장에 마우스 오버 했을 때 클래스 ride_on 추가 -->
                    <strong class="tit_wayout">
                        <a href="http://map.daum.net?busStopId=11180511053" class="link_wayout" target="_blank" data-logtarget="" data-logevent="waytogo,busstop">
                            <span class="txt_busstop">디지털3단지.한일합섬</span>
                            <span class="txt_number"><span class="screen_out">정류장 번호: </span>(18223) <span class="bg_bar">|</span> <span class="screen_out">거리: </span> 287m</span>
                        </a>
                    </strong>
                    <ul class="list_ride">
                            <li>
                                <em class="ico_traffic bus_green">지선</em><!-- 버스 선별로 대체 텍스트 부탁 드립니다. -->
                                <div class="bus_ride">
                                    <span class="num_ride">5012<span class="bg_bar">|</span>5528</span>
                                    <a href="http://map.daum.net?busStopId=11180511053" target="_blank" class="btn_more hide" data-logtarget="" data-logevent="waytogo,busstop_more"><span class="ico_comm ico_more">더보기</span></a>
                                </div>
                            </li>
                    </ul>
                </div>
        </div>
		</div>
	<%@ include file="../footer.jsp" %>
	</section>

	<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.481784, 126.881786), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

		// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
		var mapTypeControl = new daum.maps.MapTypeControl();

		// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
		// daum.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
		map.addControl(mapTypeControl, daum.maps.ControlPosition.TOPRIGHT);

		// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
		var zoomControl = new daum.maps.ZoomControl();
		map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);

		// 마커를 표시할 위치입니다 
		var position = new daum.maps.LatLng(37.481784, 126.881786);

		// 마커를 생성합니다
		var marker = new daum.maps.Marker({
			position : position
		});

		// 마커를 지도에 표시합니다.
		marker.setMap(map);

		/*// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
		var iwContent = '<div style="padding:5px;">좋은향 도서관</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

		// 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
			content : iwContent
		});

		 // 지도에 클릭 이벤트를 등록합니다
		// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
		daum.maps.event
				.addListener(
						map,
						'click',
						function(mouseEvent) {

							// 클릭한 위도, 경도 정보를 가져옵니다 
							var latlng = mouseEvent.latLng;

							// 마커 위치를 클릭한 위치로 옮깁니다
							marker.setPosition(latlng);

							// 마커에 커서가 오버됐을 때 마커 위에 표시할 인포윈도우를 생성합니다
							var iwContent = '<div style="padding:5px; text-align:center;">좋은향 도서관</div>'; // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

							// 인포윈도우를 생성합니다
							var infowindow = new daum.maps.InfoWindow({
								content : iwContent
							});
						}); 

		// 마커에 마우스오버 이벤트를 등록합니다
		daum.maps.event.addListener(marker, 'mouseover', function() {
			// 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
			infowindow.open(map, marker);
		});

		// 마커에 마우스아웃 이벤트를 등록합니다
		daum.maps.event.addListener(marker, 'mouseout', function() {
			// 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
			infowindow.close();
		}); */
		
		// 커스텀 오버레이에 표시할 컨텐츠 입니다
		// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
		// 별도의 이벤트 메소드를 제공하지 않습니다 
		var content = '<div class="wrap">' + 
		            '    <div class="info">' + 
		            '        <div class="title">' + 
		            '            좋은향도서관' + 
		            '            <div class="close" onclick="closeOverlay()" title="닫기"></div>' + 
		            '        </div>' + 
		            '        <div class="body">' + 
		            '            <div class="img">' +
		            '                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-m7ucdMplddFid2kpCvo8-Bi52ePBND2KUYJBGVPOUqgqyXJi" width="73" height="70" alt="좋은향 도서관">' +
		            '           </div>' + 
		            '            <div class="desc">' + 
		            '                <div class="ellipsis">서울 금천구 가산디지털1로 186</div>' + 
		            '                <div class="jibun ellipsis">(우) 08502(지번) 가산동 459-11</div>' + 
		            '                <div><a href="https://agi.javajs.net" target="_blank" class="link">홈페이지</a></div>' + 
		            '            </div>' + 
		            '        </div>' + 
		            '    </div>' +    
		            '</div>';

		// 마커 위에 커스텀오버레이를 표시합니다
		// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
		var overlay = new daum.maps.CustomOverlay({
		    content: content,
		    map: map,
		    position: marker.getPosition()       
		});

		// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
		daum.maps.event.addListener(marker, 'click', function() {
		    overlay.setMap(map);
		});

		// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
		function closeOverlay() {
		    overlay.setMap(null);     
		}
	</script>
</body>
</html>