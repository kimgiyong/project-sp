<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/homeCss.css">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<%
	UserVO user = (UserVO) session.getAttribute("user");
%>
<script>
	function doInit(){
		var user = '<%=user%>';
		var btn1 = document.getElementById('loge1');
		var btn0 = document.getElementById('loge0');
		if (user != 'null') {
			btn1.textContent = "LOGOUT";
			btn0.textContent = "My Page";
		}
	}
	window.addEventListener('load', doInit);
</script>
<header>
	<div id="login">
		<a><button id="loge1" value="loge1" class="loge"
				onclick="login(1)">LOGIN</button></a>
		<pre>  |  </pre>
		<a><button id="loge0" value="loge0" class="loge"
				onclick="login(0)">JOIN</button></a>
	</div>

	<div id="logoBox">
		<a href="/uri/book/homePage" id="logof"> <span id="logof1">좋은</span> <span
			id="logof2">향</span> <br> &emsp; <span id="logof3">도서</span> <span
			id="logof4">관</span>
		</a>
	</div>

	<div id="search-box">
		<select id="selection">
			<option value="none">검색 방식</option>
			<option value="title">제목</option>
			<option value="witer">작가</option>
		</select> <input type="text" name="search" placeholder="검색어를 입력하세요">
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
		<button id="allmenubtn">=</button>
	</ul>
</section>
<script>
	$(function() {
		$('.mainMenu').mouseover(function() {
			$(this).children().stop().slideDown();
		});
		$('.mainMenu').mouseleave(function() {
			$('.subMenuBox').stop().slideUp();
		});
		$('#allmenubtn').click(function() {
			$('.subMenuBox').stop().slideDown();
		});
	});
	function login(loge) {
		var btn1 = document.getElementById('loge1');
		var btn0 = document.getElementById('loge0');
		alert(btn1.textContent);
		if (loge == 1) {
			if (btn1.textContent == 'LOGIN') {
				location.href = '/uri/book/login/loginPage?loge=1';
			} else {
				au.send({
					url : '/logout',
					method : 'POST',
					success : function(res) {
						if (res == 1) {
							alert('로그아웃하였습니다.');
							location.href = '/uri/book/homePage';
						}
					}
				})
			}
		} else {
			if (btn0.textContent == 'JOIN') {
				location.href = '/uri/book/login/loginPage?loge=0';
			} else {
				alert('됫다');
				location.href = '/uri/book/update/homeMypage';
			}
		}
	}

	var logo = document.getElementById("logof");
	logo.addEventListener("click", function() {
		location.href = '/uri/book/homePage';
	});
	/* 
	var menubtn = document.getElementById("allmenubtn");
	var submenu = document.getElementsByClassName("subMenu");
	function menubtn(){
		mainMenu.style.display = "block";
	}
	menubtn.addEventListener("click",menubtn);
	 */
</script>

<div class="clear"></div>