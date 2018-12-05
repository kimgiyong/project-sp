<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>좋은향 도서관</title>
<link rel="stylesheet" type="text/css" href="${resPath}/css/homePageCss.css">
</head>

<body>
	<%@ include file="home.jsp"%>
	<div id="mainslide">
		<div id="btn">
			<div id="leftbtn">
				<button id="MoveLeftBtn">&lt;	</button>  
			</div> 
			<div id="rightbtn">
				<button id="MoverightBtn">&gt;</button> 
			</div>
		</div>
		
		<section id="slideimge">
			<ul class="imgeul">
				<li class="imgeli">
					<img src="${resPath}/img/loginimg/bookerber.jpg"	
						alt="mainimge" />
				</li>
			</ul>
			<ul class="imgeul">
				<li class="imgeli">
					<img src="${resPath}/img/loginimg/book1.jpg"
					alt="mainimge" />
				</li>
			</ul>
			<ul class="imgeul">
				<li class="imgeli">
					<img src="${resPath}/img/homeimg/back3.jpg"
					alt="mainimge" />
				</li>
			</ul>
			<ul class="imgeul">
				<li class="imgeli">
					<img src="${resPath}/img/homeimg/back4.jpg"
					alt="mainimge" />
				</li>
			</ul>
		</section>
	</div>
	<div class="clear"></div>
	
	<div id="content">
		<section id="contentA">
			<div id="cus"><button id="goBest" class="gobtn" value="goBest">오늘의 추천 도서</button><pre>  |  </pre><button id="goNew" class="gobtn" value="goNew">오늘의 신간도서</button></div>
			<button id="fooleftbtn">&lt;</button>
			<ul id="bestBook">
				<li class="imgBook">
				<img src="#">
				<h2>제목1</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목2</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목3</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목4</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목5</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목6</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목7</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목8</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목9</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목10</h2>
				</li>
				
			</ul>
			<ul id="newBook">
				<li class="imgBook">
				<img src="#">
				<h2>제목a</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목b</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목c</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목d</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목e</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목f</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목g</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목h</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목i</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목j</h2>
				</li>
			</ul>
			<button id="foorightbtn">&gt;</button>
		</section>		
		
		 <section id="contentB">
		 	<h1>공지사항</h1>
		 		<!-- DB에서 받아올 것 --> 
		 		<table id="contentBtbl">
		 			<tr class="contentBtr">
		 				<td><a href="#">나는 공지사항위치다</a></td>
		 			</tr>
		 			<tr class="contentBtr">
		 				<td><a href="#">나는 공지사항위치다</a></td>
		 			</tr>
		 			<tr class="contentBtr">
		 				<td><a href="#">나는 공지사항위치다</a></td>
		 			</tr>
		 			<tr class="contentBtr">
		 				<td><a href="#">나는 공지사항위치다</a></td>
		 			</tr>
		 			<tr class="contentBtr">
		 				<td><a href="#">나는 공지사항위치다</a></td>
		 			</tr>
		 			<tr class="contentBtr">
		 				<td><a href="#">나는 공지사항위치다</a></td>
		 			</tr>
		 		</table>
		</section>
		
</div>
	<div class="clear"></div>
	<!-- 도서신청, 질의응답, 지도검색, 대여하기, 이용안내 -->
<div id="iconContent">
	<div id="iconContainer">
		<div class="iconMenu">	
			<div class="iconBox">	
				<a href="#"><img src="#"></a>
			</div>
			<a href="#">도서 신청</a>
		</div>
		<div class="iconMenu">	
			<div class="iconBox">	
				<a href="#"><img src="#"></a>
			</div>
			<a href="#">질의 응답</a>
		</div>
		<div class="iconMenu">	
			<div class="iconBox">	
				<a href="#"><img src="#"></a>
			</div>
			<a href="#">지도 검색</a>
		</div>
		<div class="iconMenu">	
			<div class="iconBox">	
				<a href="#"><img src="#"></a>
			</div>
			<a href="#">대여하기</a>
		</div>
		<div class="iconMenu">	
			<div class="iconBox">	
				<a href="#"><img src="#"></a>
			</div>
			<a href="#">이용 안내</a>
		</div>
	</div>	
</div>
	<footer>
		<div class="logoBox" id="foologoBox">
			<span id="logof1">좋은</span> <span id="logof2">향</span> <br>
			&emsp; <span id="logof3">도서</span> <span id="logof4">관</span> 
			<!-- <img src="../img/logo4jpg3.jpg" alt="logoimge"> -->
		</div>
		<pre id="fooTextarea" >
		
		
		
도서관명 : 좋은향 도서관  |  설립일 : 2018.12.05  |  대표 : 김기용,박경훈,한승우  |  이사장 : 조은향


도서관 주소 : 서울시 금천구 가산디지털1로 186. (가산동. 제이플라츠 5F. 515,516호)


연락처 : 02)653-1234,335-2523 fax.031-228-2252 / admin@agi.net
		</pre>
		<p></p>
	</footer>
	
	 
<script>

	$(function() {
	var $careNum = 0;
	var $theSize = 3;
		$("#slideimge ul").hide();
		$("#slideimge ul").eq(0).show();
		window.setInterval(function() {
			$("#MoverightBtn").click();
		}, 5000);
		$("#MoveLeftBtn").click(function() {
			$careNum--;
			if ($careNum < 0)
				$careNum = $theSize - 1;
			$("#slideimge ul").hide();
			$("#slideimge ul").eq($careNum).show();
		});

		$("#MoverightBtn").click(function() {
			$careNum++;
			if ($careNum >= $theSize)
				$careNum = 0;
			$(this).parent().children("ul");
			$("#slideimge ul").hide();
			$("#slideimge ul").eq($careNum).show();
			
		});
		
		
		var bcareNum = 0;
		var bcareSize = 9; //0~9까지
		var btoggle = 0;
		
		function bestBookfun(){
			$("#bestBook li").hide();
			$("#bestBook li").eq(bcareNum++).show();
			$("#bestBook li").eq(bcareNum++).show();
			$("#bestBook li").eq(bcareNum++).show();
			$("#bestBook li").eq(bcareNum).show();
		}
		function newBookfun(){
			$("#newBook li").hide();
			$("#newBook li").eq(bcareNum++).show();
			$("#newBook li").eq(bcareNum++).show();
			$("#newBook li").eq(bcareNum++).show();
			$("#newBook li").eq(bcareNum).show();
		}
		
		$("#goBest").click(function(){
			bcareNum=0;
			$("#bestBook").show();
			$("#newBook").hide();
			bestBookfun();
			btoggle = 0;
		});
		$("#goNew").click(function(){
			bcareNum = 0;
			$("#newBook").show();
			$("#bestBook").hide();
			newBookfun();
			btoggle = 1;
		});
		
		$("#fooleftbtn").click(function(){
			bcareNum-=4	;
			if(bcareNum<0){
				bcareNum=bcareSize-3;
			}	
			if(btoggle==0){
				bestBookfun(); //나는 빨리 바뀌기를 원한다
			}else{
				newBookfun(); // 나는 집에 가고 싶다
			}
		});
		 
		
		$("#foorightbtn").click(function(){
			bcareNum-=2;
			if(bcareNum>bcareSize-3){
				bcareNum=0;
			}else if(bcareNum==-2){
				bcareNum+=3;
			}
			if(btoggle==0){
				bestBookfun();
			}else{
				newBookfun();
			}
				
		});
	}); 
</script>
</body>
</html>