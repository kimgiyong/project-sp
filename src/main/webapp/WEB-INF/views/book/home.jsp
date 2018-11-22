<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>좋은향 도서관</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/homeCss.css">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">
<link href="common/base.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>
<body>
	<header>
		<div id="login">
			<a href="loginPage?loge=1"><button id="loge1" value="loge1"	class="loge">LOGIN &emsp; </button></a> | 
			<a href="loginPage?loge=0"><button id="loge0" value="loge0" class="loge"> &emsp; JOIN</button></a>
		</div>

		<div id="logoBox">
			<a href="#" id="logof"><span id="logof1">좋은</span> 
			<span id="logof2">향</span> <br> &emsp; 
			<span id="logof3">도서</span> 
			<span id="logof4">관</span></a>
		</div>

		<div id="search-box">
			<select id="selection">
				<option value="none">검색 방식</option>
				<option value="title">제목</option>
				<option value="witer">작가</option>
			</select> 
			<input type="text" name="search" placeholder="검색어를 입력하세요">
			<button class="search-btn" href="#">
					<i class="fas fa-search"></i>
			</button>
		</div>
	</header>
	
	<div class="clear"></div>
	
	<section id="bodyHead">
		<ul id="menuBox">
			<li class="mainMenu"><a href="#">도서관 이용</a>
				<ul class="subMenuBox">
					<li class="subMenu"><a href="#">도서관 이용시간</a></li>
					<li class="subMenu"><a href="#">도서관 이용방법</a></li>
					<li class="subMenu"><a href="#">도서관</a></li>
				</ul></li>
			<li class="mainMenu"><a href="#">메인메뉴 목록2</a>
				<ul class="subMenuBox">
					<li class="subMenu"><a href="#">서브메뉴 목록1</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록2</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록3</a></li>
				</ul></li>
			<li class="mainMenu"><a href="#">메인메뉴 목록3</a>
				<ul class="subMenuBox">
					<li class="subMenu"><a href="#">서브메뉴 목록1</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록2</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록3</a></li>
				</ul></li>
			<li class="mainMenu"><a href="#">메인메뉴 목록4</a>
				<ul class="subMenuBox">
					<li class="subMenu"><a href="#">서브메뉴 목록1</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록2</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록3</a></li>
				</ul></li>
			<li class="mainMenu"><a href="#">메인메뉴 목록5</a>
				<ul class="subMenuBox">
					<li class="subMenu"><a href="#">서브메뉴 목록1</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록2</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록3</a></li>
				</ul></li>
			<li class="mainMenu"><a href="#">메인메뉴 목록6</a>
				<ul class="subMenuBox">
					<li class="subMenu"><a href="#">서브메뉴 목록1</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록2</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록3</a></li>
				</ul></li>
		</ul>
	</section>
	<div class="clear"></div>
</body>
</html>