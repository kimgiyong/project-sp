<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>스프링테스트</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/homeCss.css">
</head>

<body>
	<header>
		<div id="logoBox">이미지 넣을 곳</div>
		<div id="searchBox">
			<select id="selection">
				<option value="none">검색 방식</option>
				<option value="title">제목</option>
				<option value="witer">작가</option>
			</select> <input type="text" name="search">
			<button id="searchBtn">검색</button>
		</div>
		<div id="login">
			<a href="loginPage?loge=1"><button id="loge1" value="loge1"
					class="loge">로그인</button></a> | <a href="loginPage?loge=0"><button
					id="loge0" value="loge0" class="loge">
					회원가입
					<!--  |  -->
				</button></a>
			<!-- <button><a href="forget">아이디 및 비밀번호 찾기</a></button> -->
		</div>
	</header>
	<div class="clear"></div>
	<section id="bodyHead">
		<ul id="menuBox">
			<li class="mainMenu"><a href="#">메인메뉴 목록1</a>
				<ul class="subMenuBox">
					<li class="subMenu"><a href="#">서브메뉴 목록1</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록2</a></li>
					<li class="subMenu"><a href="#">서브메뉴 목록3</a></li>
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
		<div class="clear"></div>
		<div id="AdWin">
			<div id="centerimge">
			
				<div id="leftbtn">
					<button id="MoveLeftBtn">&lt;</button>
				</div>
				<div id="rightbtn">
					<button id="MoverightBtn">&gt;</button>
				</div>
				
			</div>
		</div>
	</section>
</body>
</html>