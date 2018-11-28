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
		</section>
	</div>
	<div class="clear"></div>
	
	<div id="content">
		<section id="contentA">
			<div id="cus"><button id="goBest" style="font-weight: ">오늘의 추천 도서</button><pre>  |  </pre><button id="goNew">오늘의 신간도서</button></div>
			<button id="fooleftbtn">&lt;</button>
			<ul id="bestBook">
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				
			</ul>
			<ul id="newBook" hidden="ture">
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
				<li class="imgBook">
				<img src="#">
				<h2>제목</h2>
				</li>
			</ul>
			<button id="foorightbtn">&gt;</button>
		<!-- 	<div id="cus"><a href="#">오늘의 추천 도서</a> | <a href="#">오늘의 신간 도서</a></div><br>   --> 
			
			
			<!-- <div id="cuchen">테이블 과  ul,li로 바꿔야 함 이렇게 하면 움직이기 힘들다고 들음. 
				<div class="foobtn">
					<button id="fooleftBtn">&lt;</button>
				</div>
				<div id="cuchen1" class="Cbook">
					<img alt="1위" src="#"><br>
					<span>제목1이다.</span>
				</div>
				<div id="cuchen2" class="Cbook">
					<img alt="2위" src="#"><br>
					<span>제목2이다.</span>
				</div>
				<div id="cuchen3" class="Cbook">
					<img alt="3위" src="#"><br>
					<span>제목3이다.</span>
				</div>
				아이디 숫자 자동증가 & alt값 자동증가 필요
				버튼클릭 시 해당 바향으로 순위가 바뀐다. (10에선 1위로)
				<div class="foobtn">  
					<button id="foorightBtn">&gt;</button>
				</div>
			</div> -->
		</section>
		
		 <section id="contentB">
		 	<h1>공지사항</h1>
		 		<!-- DB에서 받아올 것 --> 
		</section>
	</div>
	
	<div class="clear"></div>
	<footer>
		<div id="logoBox">
			<span id="logof1">좋은</span> <span id="logof2">향</span> <br>
			&emsp; <span id="logof3">도서</span> <span id="logof4">관</span> 
			<!-- <img src="../img/logo4jpg3.jpg" alt="logoimge"> -->
		</div>
		<p></p>
	</footer> 
</body>
<script>
	$(function() {
	var $careNum = 0;
		var $theSize = 3;
		$("#slideimge ul").hide();
		$("#slideimge ul").eq(0).show();
		window.setInterval(function() {
			$("#MoverightBtn").click();
		}, 2000);
		$("#MoveLeftBtn").click(function() {
			$careNum--;
			if ($careNum < 0)
				$careNum = $theSize - 1;	
			$("#slideimge ul li").animate({'width':'100p'},500);
			$("#slideimge ul li").eq($careNum).animate({'width':'1000px'},500);
		});

		$("#MoverightBtn").click(function() {
			$careNum++;
			if ($careNum >= $theSize)
				$careNum = 0;
			$(this).parent().children("ul");
			$("#slideimge ul").animate({'width':'1000px'},500);
			$("#slideimge ul").eq($careNum).animate({'width':'100px'},500);
		});
	});
	
	var bestBook = document.getElementById("bestBook");
	var newBook = document.getElementById("newBook");
	
	var goBest = document.getElementById("goBest");
	var goNew = document.getElementById("goNew");
	
	function changeBestNewBook(){
		if(goNew.textContent == '오늘의 신간도서'){
			goBest.style.display = 'none';
			goNew.style.display = 'inline-block';
		}else{
			goNew.style.display = 'none';
			goBest.style.display = 'inline-block';
		}
	}
	
	goBest.addEventListener("click", changeBestNewBook);
	goNew.addEventListener("click", changeBestNewBook);
</script>
</html>