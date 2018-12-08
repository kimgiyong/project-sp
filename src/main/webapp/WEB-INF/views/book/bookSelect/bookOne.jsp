<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/bookSelectCss/bookOne.css" />
</head>
<body>
<%@ include file="../home.jsp"%>
<hr>
<div class="container">
	<div id="listHead">
		<span>상세 정보</span> 
		<h3><button>돌아기기</button></h3>
	</div>
	
	<table id="bookInfoTbl">
		<tr>
			<td><img id="bookImg" src="#"></td>
			<td><ul>
				<li>도서명 : 책이름</li>
				<li>저작자 : 작가이름</li>
				<li>출판사 : 출판사이름</li>
				<li>저작일 : 저작 날짜</li>
				<li><span id="like">좋아요 : 좋아요개수</span><button id="likeToggle"><img  id="likeImg" src="/resources/img/heart.png"></button></li>
				<li>수량 : 재고수</li>
				<li>책설명 : 책설명</li> 
			</ul></td>
		</tr>
	</table>
</div>

<%@ include file="../footer.jsp"%>
</body>
<script>
	var likeToggle = document.getElementById("likeToggle");
	var likeImg = document.getElementById("likeImg");
	
	likeToggle.addEventListener("click",function(){
			likeImg.src = "/resources/img/heart.gif";
		window.setTimeout(function() {
			likeImg.src = "/resources/img/heart.png";
		}, 750);
	});
</script>
</html>