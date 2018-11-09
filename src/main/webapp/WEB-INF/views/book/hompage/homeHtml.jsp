<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>

<body>
<header>
	<div id="logoBox">이미지 넣을 곳</div>
	<div id="searchBox">
		<select id="selection">
			<option value="none">검색 방식</option>
			<option value="title">제목</option>
			<option value="witer">작가</option>
		</select>
		<input type="text" name="search">
		<button id="searchBtn">검색</button>
	</div>
	<div id="login">
		<a href="loginPage">로그인</a> | 
		<a href="joinPage">회원가입</a> |
		<a href="forget">아이디 및 비밀번호 찾기</a>
	</div>
</header>

<section id="headBody">
	<ul id="menuBox">
		<li class="mainMenu">메인메뉴 목록1
			<ul class="subMenuBox">
				<li class="subMenu">서브메뉴 목록1</li>
				<li class="subMenu">서브메뉴 목록2</li>
				<li class="subMenu">서브메뉴 목록3</li>
			</ul>
		</li>
		<li class="mainMenu">메인메뉴 목록1
			<ul class="subMenuBox">
				<li class="subMenu">서브메뉴 목록1</li>
				<li class="subMenu">서브메뉴 목록2</li>
				<li class="subMenu">서브메뉴 목록3</li>
			</ul>
		</li>
		<li class="mainMenu">메인메뉴 목록1
			<ul class="subMenuBox">
				<li class="subMenu">서브메뉴 목록1</li>
				<li class="subMenu">서브메뉴 목록2</li>
				<li class="subMenu">서브메뉴 목록3</li>
			</ul>
		</li>
	</ul>
	<div id="AdWin">
		<div class="AdImg">img left
			<button id="MoveLeftBtn">왼쪽 이미지</button>
		</div>
		<div class="AdImg">img center</div>
		<div class="AdImg">img right
			<button id="MoveLeftBtn">왼쪽 이미지</button>
		</div>
	</div>
</section>
</body>
</html>