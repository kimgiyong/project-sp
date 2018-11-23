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
	<div id="btn">
		<div id="leftbtn">
			<button id="MoveLeftBtn">&lt;</button>
		</div>
		<div id="rightbtn">
			<button id="MoverightBtn">&gt;</button>
		</div>
	</div>
	<section id="slideimge">
		<ul class="imgeul">
			<li class="imgeli"><img
				src="${resPath}/img/loginimg/bookerber.jpg"	
				alt="mainimge" /></li>
		</ul>
		<ul class="imgeul">
			<li class="imgeli"><img
				src="${resPath}/img/loginimg/book1.jpg"
				alt="mainimge" /></li>
		</ul>
		<ul class="imgeul">
			<li class="imgeli"><img
				src="${resPath}/img/homeimg/back3.jpg"
				alt="mainimge" /></li>
		</ul>
	</section>


	<div class="clear"></div>

	<!-- <section id="cuchen">
		<div id="cus">오늘의 추천 도서 | 오늘의 신간 도서</div>
		<div id="fooleftbtn">
			<button id="fooleftBtn">&lt;</button>
		</div>
		<div id="cuchen1">
			<img alt="1위" src="#">
		</div>
		<div id="cuchen1">
			<img alt="2위" src="#">
		</div>
		<div id="foorightbtn">
			<button id="foorightBtn">&gt;</button>
		</div>
	</section>

	<section> // 원본파일

				<div class="menu-left">
					<ul>
						<li><a href="javascript:;">11<img
								src="http://blog.fujixerox.co.kr/wp-content/uploads/2017/10/FUJI%EB%B8%94%EB%A1%9C%EA%B7%B8_1023_%EB%94%94%EC%9E%90%EC%9D%B8%EC%9A%94%EC%B2%AD_%EA%B0%80%EC%9D%84-%ED%95%84%EB%8F%85%EB%8F%84%EC%84%9C.png"
								alt="" /></a></li>
						<li><a href="javascript:;">33<img
								src="https://t1.daumcdn.net/cfile/tistory/26065733597029C81E"
								alt="" /></a></li>
					</ul>
					<ul>
						<li><a href="javascript:;">22<img
								src="https://t1.daumcdn.net/cfile/tistory/26065733597029C81E"
								alt="" /></a></li>
						<li><a href="javascript:;">44<img
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfBZPemJhAIGX3V1FqIdiD5rP1Nu1UzdVhZMV1L8NG8jQReGYtSg"
								alt="" /></a></li>
					</ul>

					<div class="control">
						<button class="left">left</button>
						<button class="right">right</button>
					</div>
				</div>
			</section>

	
	<div class="clear"></div>
	<footer>
		<div id="logoBox">
			<span id="logof1">좋은</span> <span id="logof2">향</span> <br>
			&emsp; <span id="logof3">도서</span> <span id="logof4">관</span> <img
				src="../img/logo4jpg3.jpg" alt="logoimge">
		</div>
		<p></p>
	</footer> -->
</body>
<script>
	$(function() {
	var $careNum = 0;
		var $theSize = 2;
		$("#slideimge ul").hide();
		$("#slideimge ul").eq(0).show();
		window.setInterval(function() {
			$("#rightbtn").click();
		}, 4000);
		$("#leftbtn").click(function() {
			$careNum--;
			if ($careNum < 0)
				$careNum = $theSize - 1;
			$("#slideimge ul").hide();
			$("#slideimge ul").eq($careNum).show();
		});

		$("#rightbtn").click(function() {
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