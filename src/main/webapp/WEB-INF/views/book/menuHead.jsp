<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuHead.css" />
<body>
	<div id="listHead">
		<span id="detextname"></span>
		<h3>
			<a id="callback" onclick="goback()">돌아가기</a>
		</h3>
	</div>
	<div id="spaceDiv"></div>
	<script>
		var detextname = document.getElementById("detextname");
		var callback = document.getElementById("callback");
		function goback(){
			window.history.go(-1);
		}
		function gohome(){
			window.location.href = '/uri/book/homePage';
		}
		
		/* 이거 밑에 세줄 이용해서 쓰면 됨!
		detextname.textContent = "도서관 소개"; 	
		detextname.textContent = "상세 정보";			//이름바꾸기
		callback.textContent="홈페이지";
		callback.addEventListener("click", gohome); //홈으로 가기
		callback.addEventListener("click", goback); //바로 이전으로 가기
		*/
	</script>