<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=IE9">
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/homeCss.css">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Mukta|Nanum+Gothic|Black+And+White+Picture|Dokdo|East+Sea+Dokdo|Gamja+Flower|Gugi|Nanum+Pen+Script" rel="stylesheet">
<link href="https://software.naver.com/software/summary.nhn?softwareId=GWS_000324#">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<%
	UserVO user = (UserVO) session.getAttribute("user");
	int userNum=0;
	String userName = "";
	if(user!=null){
		userNum = user.getUserNum();
		userName = user.getUserName();
	}
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
<script>
	$(document).ready(function() {
		var jbOffset = $('#bodyHead').offset();
		$(window).scroll(function() {
			if ($(document).scrollTop() > jbOffset.top) {
				$('#bodyHead').addClass('jbFixed');
			} else {
				$('#bodyHead').removeClass('jbFixed');
			}
		});
	});
</script>
<div class="body"></div>
<header>
	<div id="login">
		<a><button id="loge1" value="loge1" class="loge"
				onclick="login(1)">LOGIN</button></a>
		<pre>  |  </pre>
		<a><button id="loge0" value="loge0" class="loge"
				onclick="login(0)">JOIN</button></a>
	</div>

	<div class="logoBox">
		<a href="/uri/book/homePage" id="logof"> 
			<img src="${resPath}/img/logo.PNG" alt="uplogo">
		</a>
	</div>

	<div id="search-box">
		<select id="selection">
			<option value="none">검색 방식</option>
			<option value="bookName">제목</option>
			<option value="bookWriter">작가</option>
			<option value="bookPub">출판사</option>
		</select> <input type="text" name="search" id="searchBox" placeholder="검색어를 입력하세요" onkeydown='enterkey()'/>
		<button class="search-btn">
			<i class="fas fa-search"></i>
		</button>
	</div>
</header>

<div class="clear"></div>

<div class="mainMenu" id="lastmainMenu"><a href="#" id="allmenubtn" style="font-size: 300%;">≡</a>	
</div>
<section id="bodyHead">
	<ul id="menuBox">
		<li class="mainMenu"><a href="#">좋은 도서</a>
			<ul class="subMenuBox">
				<li class="subMenu"><a onclick="goBList()">도서 목록</a></li>
				<li class="subMenu"><a href="#">도서 신청</a></li>
				<li class="subMenu"><a href="#">도서 기부</a></li>
			</ul>
		</li>
		<li class="mainMenu"><a href="#">좋은 소통</a>
			<ul class="subMenuBox">
				<li class="subMenu"><a href="#">공지사항</a></li>
				<li class="subMenu"><a href="/uri/book/menu/qna/qnaList">Q & A</a></li>
				<li class="subMenu"><a href="/uri/book/menu/noticeboard/noticeList">게시판</a></li>
			</ul>
		</li>
		<li class="mainMenu"><a href="#">좋은 나눔</a>
			<ul class="subMenuBox">
				<li class="subMenu"><a href="/uri/book/menu/share/sentence">책 속의 한 문장</a></li>
				<li class="subMenu"><a href="/uri/book/menu/share/report">독후감 자랑</a></li>
				<li class="subMenu"><a href="/uri/book/menu/share/boast">나는 이책을 봤다</a></li>
			</ul>
		</li>
		<li class="mainMenu"><a href="#">좋은 소개</a>
			<ul class="subMenuBox" style="width:376px">
				<li class="subMenu" style="width:376px"><a href="/uri/book/menu/infoUse">도서관 이용방법</a></li>
				<li class="subMenu" style="width:376px"><a href="/uri/book/menu/history">도서관 연혁</a></li>
				<li class="subMenu" style="width:376px"><a href="/uri/book/menu/mapinfo">도서관 위치</a></li>
			</ul>
		</li>
	</ul>	
</section>

<script>
	$(function() {
		var a = 0;
		var b = 0;
		$('.mainMenu').mouseover(function() {
			$(this).children().stop().slideDown();
			$('.subMenuBox').eq(4).hide();
		});
		$('.mainMenu, .subMenuBox').mouseleave(function() {
			if(b==0){
				$('.subMenuBox').stop().slideUp();
				a=0;
			}
		});
		
		$('#allmenubtn').click(function() {
			if(a==0){
				$('.subMenuBox').stop().slideDown();
				a=1;
				b=1;
			}else{
				$('.subMenuBox').stop().slideUp();
				a=0;
				b=0;
			}
			
		});
	});
	function login(loge) {
		var btn1 = document.getElementById('loge1');
		var btn0 = document.getElementById('loge0');
		/* alert(btn1.textContent); */
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
							if(window.location.href.lastIndexOf('homeMypage')==-1){
								location.href = window.location.href;
							}else{
								location.href="/uri/book/homePage";
							}
						}
					}
				})
			}
		} else {
			if (btn0.textContent == 'JOIN') {
				location.href = '/uri/book/login/loginPage?loge=0';
			} else {
				location.href = '/uri/book/update/homeMypage';
			}
		}
	}

	var logo = document.getElementById("logof");
	logo.addEventListener("click", function() {
		location.href = '/uri/book/homePage';
	});
	var btn = document.querySelector('.search-btn');
	function enterkey() {
		if (window.event.keyCode == 13) {

			// 엔터키가 눌렸을 때 실행할 내용
			search();
		}
	}
	
	function goBList() {
		location.href='/bookList?pageS=1';
	}
	function search(){
		var selection = document.querySelector('#selection').value;
		var searchBox = document.querySelector('#searchBox').value;
		if(selection=='none'){
			location.href="/bookList?bookName=" + searchBox + '&bookPub=' + searchBox + '&bookWriter=' + searchBox + '&pageS=1';
		}else{
			location.href='/bookList?' + selection + '=' + searchBox + "&pageS=1";
		}
	}
	
	btn.addEventListener('click',search);
	 
</script>

<div class="clear"></div>