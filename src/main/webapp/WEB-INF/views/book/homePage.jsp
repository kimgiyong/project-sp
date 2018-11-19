<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>스프링테스트</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/homeCss.css">
<link href="http://fonts.googleapis.com/earlyaccess/jejuhallasan.css"
	rel="stylesheet">
<style type="text/css">
.container .menu-left { /* float:left; */
	margin: 38px 24px 0 16px;
	width: 382px;
	height: 345px;
	overflow: hidden;
}

.container .menu-left ul {
	height: 304px
}

.container .menu-left li {
	float: left;
	margin-bottom: 16px
}

.container .menu-left li img {
	width: 175px;
	height: 135px; 
}
</style>
<link href="common/base.css" rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</head>


<body>
	<div id="total">
		<header>
			<div id="login">
				<a href="loginPage?loge=1"><button id="loge1" value="loge1"
						class="loge">로그인</button></a> | <a href="loginPage?loge=0"><button
						id="loge0" value="loge0" class="loge">
						회원가입
						<!--  |  -->
					</button></a>
				<!-- <button><a href="forget">아이디 및 비밀번호 찾기</a></button> -->
			</div>

			<div id="logoBox">
				<a href="#" id="logof"><span id="logof1">좋은</span> <span id="logof2">향</span> <br>
				&emsp; <span id="logof3">도서</span> <span id="logof4">관</span></a>
				<!-- <img src="../img/logo4jpg3.jpg" alt="logoimge"> -->
			</div>

			<div id="searchBox">
				<select id="selection">
					<option value="none">검색 방식</option>
					<option value="title">제목</option>
					<option value="witer">작가</option>
				</select> <input type="text" name="search">
				<button id="searchBtn">검색</button>
			</div>

		</header>
		<div class="clear"></div>
		<section id="bodyHead">
			<ul id="menuBox">
				<li class="mainMenu"><a href="#">도서관 이용</a>
					<ul class="subMenuBox">
						<li class="subMenu"><a href="#">도서관 이용시간</a></li>
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
					<div class="menu-left">
						<ul>
							<li><img
								src="http://blog.fujixerox.co.kr/wp-content/uploads/2017/10/FUJI%EB%B8%94%EB%A1%9C%EA%B7%B8_1023_%EB%94%94%EC%9E%90%EC%9D%B8%EC%9A%94%EC%B2%AD_%EA%B0%80%EC%9D%84-%ED%95%84%EB%8F%85%EB%8F%84%EC%84%9C.png"
								alt="mainimge" /></li>
						</ul>
						<ul>
							<li><img
								src="https://t1.daumcdn.net/cfile/tistory/26065733597029C81E"
								alt="mainimge" /></li>
						</ul>
						<ul>
							<li><img
								src="http://www.dbynews.com/news/photo/201810/39774_25569_224.jpg"
								alt="mainimge" /></li>
						</ul>

						<div class="control">
							<div id="leftbtn">
								<button id="MoveLeftBtn">&lt;</button>
							</div>
							<div id="rightbtn">
								<button id="MoverightBtn">&gt;</button>
							</div>
						</div>
					</div>
				</div>
			</div>
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
		</section> -->

		<!-- <section>



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
			</section> -->




		<!-- <footer>
			<div id="logoBox">
				<span id="logof1">좋은</span> <span id="logof2">향</span> <br>
				&emsp; <span id="logof3">도서</span> <span id="logof4">관</span>
				<img src="../img/logo4jpg3.jpg" alt="logoimge">
			</div>
		</footer> -->
	</div>
</body>
<script>
	var $careNum = 0;
	var $theSize = 2;

	$(".menu-left ul").hide();
	$(".menu-left ul").eq(0).show();
	window.setInterval(function() {
		$("#rightbtn").click();
	}, 4000);
	$(".menu-left #leftbtn").click(function() {
		$careNum--;
		if ($careNum < 0)
			$careNum = $theSize - 1;
		$(".menu-left ul").hide();
		$(".menu-left ul").eq($careNum).show();
	});

	$(".control #rightbtn").click(function() {
		$careNum++;
		if ($careNum >= $theSize)
			$careNum = 0;
		$(this).parent().children("ul");
		$(".menu-left ul").hide();
		$(".menu-left ul").eq($careNum).show();
	});
</script>
<!-- <script>
	var $careNum = 0;
	var $theSize = 2;

	$(".menu-left ul").hide();
	$(".menu-left ul").eq(0).show();
	window.setInterval(function() {
		$("#MoverightBtn").click();
	}, 4000);
	$(".menu-left #MoveLeftBtn").click(function() {
		$careNum--;
		if ($careNum < 0)
			$careNum = $theSize - 1;
		$(".menu-left ul").hide();
		$(".menu-left ul").eq($careNum).show();
	});

	$(".control #MoverightBtn").click(function() {
		$careNum++;
		if ($careNum >= $theSize)
			$careNum = 0;
		$(this).parent().children("ul");
		$(".menu-left ul").hide();
		$(".menu-left ul").eq($careNum).show();
	});
</script> -->
</html>