<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
	<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/homeCss2.css">
</head>
<body>
<header>
	<section id="logo">
		<div id="img">이미지 넣을 곳!</div>  
	</section>
	<section id="search">
		<div class="search-box">	
			<input type="text" class="search-txt" name="" placeholder="검색어를 입력하세요">
			<button class="search-btn" href="#">
				<i class="fas fa-search"></i>
			</button>
		</div>
	</section>
	<section id="login">	
			<a href="loginPage"><button id="loge1" value="loge1">로그인 </button></a> |
			<a href="loginPage"><button id="loge0" value="loge0">회원가입  | </button></a>
			<a href="forgetIP"><button id="forget"> 아이디/비밀번호 찾기 </button></a>
	</section>
</header>
<div class="clear"></div>
</body>
</html>