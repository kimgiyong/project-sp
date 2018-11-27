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
			<table id="newBook">
				<tr class="toptbl">
					<td colspan="2"><a href="#">오늘의 추천 도서</a></td>
					<td><pre>  |  </pre></td>
					<td colspan="2"><a href="#">오늘의 신간 도서</a></td>
				</tr>
				<tr class="midtbl">
					<td></td>
					<td rowspan="2"><img alt="1위" src="#"></td>
					<td rowspan="2"><img alt="2위" src="#"></td>
					<td rowspan="2"><img alt="3위" src="#"></td>
					<td></td>
				</tr>
				<tr class="foobtn">
					<td><button class="fooleftBtn">&lt;</button></td>
					<td><button class="foorightBtn">&gt;</button></td>
				</tr>
				<tr class="rowtbl">
					<td></td>
					<td>신간도서1편</td>
					<td>신간도서2편</td>
					<td>신간도서3편</td>
					<td></td>
				</tr>
			</table>
			<table id="newBook" hidden="true">
				<tr class="toptbl">
					<td colspan="2"><button class="newBtn">오늘의 추천 도서</button></td>
					<td><pre>  |  </pre></td>
					<td colspan="2"><<button class="bestBtn">오늘의 신간 도서</button></td>
				</tr>
				<tr class="midtbl">
					<td></td>
					<td rowspan="2"><img alt="1위" src="#"></td>
					<td rowspan="2"><img alt="2위" src="#"></td>
					<td rowspan="2"><img alt="3위" src="#"></td>
					<td></td>
				</tr>
				<tr class="foobtn">
					<td><button class="fooleftBtn">&lt;</button></td>
					<td><button class="foorightBtn">&gt;</button></td>
				</tr>
				<tr class="rowtbl">
					<td></td>
					<td>베스트셀러1편</td>
					<td>베스트셀러2편</td>
					<td>베스트셀러3편</td>
					<td></td>
				</tr>
			</table>
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
	var $careNum2 = 0;
		var $theSize = 3;
		$("#slideimge ul").hide();
		$("#slideimge ul").eq(0).show();
		window.setInterval(function() {
			$("#MoverightBtn").click();
		}, 4000);
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
	});
</script>
</html>