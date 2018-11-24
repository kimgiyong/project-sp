<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/homeCss.css">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css" rel="stylesheet">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<% userVO user = (userVO)session.getAttribute("user"); %>
	<header>
		<div id="login">
			<a href="login/loginPage?loge=1"><button id="loge1" value="loge1" class="loge">LOGIN &nbsp; </button></a> | 
			<a href="login/loginPage?loge=0"><button id="loge0" value="loge0" class="loge"> &nbsp; JOIN</button></a>
		</div>

		<div id="logoBox">
			<a href="#" id="logof">
			<span id="logof1">좋은</span> 
			<span id="logof2">향</span> <br> &emsp; 
			<span id="logof3">도서</span> 
			<span id="logof4">관</span>
			</a>
		</div>

		<div id="search-box">
			<select id="selection">
				<option value="none">검색 방식</option>
				<option value="title">제목</option>
				<option value="witer">작가</option>
			</select> 
			<input type="text" name="search" placeholder="검색어를 입력하세요">
			<button class="search-btn" id="search-btn">
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
	<script>
		$(function(){
			$('.mainMenu').mouseover(function(){
				$(this).children().stop().slideDown();
			})
			$('.mainMenu').mouseleave(function(){
				$('.subMenuBox').stop().slideUp();
			})
		});
		var user = <%=user%>;
		var loginbtn = document.getElementById('loge1');
		var joinbtn = document.getElementById('loge0');
		var search = document.getElementById('search-btn');
		
		function userfun(){
			
			if(user==null){
				loginbtn.textContent = "LOGIN";
				joinbtn.textContent = "JOIN";
			}else{
				loginbtn.textContent = "LOGOUT";
				joinbtn.textContent = "My Page";
			}
		}
		search.addEventListener("click",function(){alert(user);});/* 이거 그냥 확인용 나중에 지울꺼 */
		window.addEventListener("load",userfun);
		
	</script>
	
	<div class="clear"></div>