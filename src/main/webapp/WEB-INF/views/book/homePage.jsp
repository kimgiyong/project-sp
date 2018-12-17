<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>좋은향 도서관</title>
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/homePageCss.css">
</head>

<body>
	<%@ include file="home.jsp"%>
	<script>
		function doin(){
			var conf = {
					url:'/famous',
					method:'GET',
					success:function(res){
						res = JSON.parse(res);
						var wisetrun = document.querySelector('#wisetrun');
						wisetrun.innerHTML = res.content;
					}
			}
			au.send(conf);
		}
		window.addEventListener('load',doin);
	</script>
	<div id="mainslide">
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
					src="${resPath}/img/homeimg/slideimg/slogan_img1.gif" alt="mainimge" /></li>
			</ul>
			<ul class="imgeul">
				<li class="imgeli"><img
					src="${resPath}/img/homeimg/slideimg/book6.png" alt="mainimge" /></li>
			</ul>
			<ul class="imgeul">
				<li class="imgeli"><img
					src="${resPath}/img/homeimg/slideimg/bookgmm.jpg" alt="mainimge" /></li>
			</ul>
			<ul class="imgeul">
				<li class="imgeli"><img
					src="${resPath}/img/homeimg/slideimg/book5.jpg" alt="mainimge" /></li>
			</ul>
		</section>
	</div>
	<div class="clear"></div>
	<div id="content">
		<div id="wiseSaying">
		<marquee id="wisetrun" behavior=alternate></marquee>
			<!-- ..페이지가 새로 로딩될때마다 만 바뀜.. -->
		</div>
		<div class="clear"></div>
		<section id="contentA">
			<div id="cus">
				<button id="goBest" class="gobtn">오늘의 추천 도서</button>
				<pre>  |  </pre>
				<button id="goNew" class="gobtn">오늘의 신간도서</button>
			</div>
			<button id="fooleftbtn">&lt;</button>
			<ul id="bestBook">
				<li class="imgBook"><img src="http://image.yes24.com/momo/TopCate1333/MidCate009/123958609(3).jpg" alt="bookimg">
					<h2 title="말의 품격">말의 품격</h2></li>
				<li class="imgBook"><img src="https://image.aladin.co.kr/product/8895/77/Cover/K582535393_2.jpg" alt="bookimg">
					<h2 title="언어의 온도">언어의 온도</h2></li>
				<li class="imgBook"><img src="https://misc.ridibooks.com/cover/754023693/xxlarge" alt="bookimg">
					<h2 title="죽고싶지만 떡볶이는 먹고싶어">죽고싶지만 떡볶이는 먹고싶어</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목4</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목5</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목6</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목7</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목8</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목9</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목10</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목11</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목12</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목13</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목14</h2></li>
			</ul>
			<ul id="newBook">
				<li class="imgBook"><img src="https://misc.ridibooks.com/cover/3170010791/xxlarge" alt="bookimg">
					<h2 title="정령왕 엘퀴네스">정령왕 엘퀴네스</h2></li>
				<li class="imgBook"><img src="http://image.yesfile.com/data/2018/09/23/1537671265_8yC0.jpg" alt="bookimg">
					<h2 title="금발의 정령사">금발의 정령사</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목c</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목d</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목e</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목f</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목g</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목h</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목i</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목j</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목k</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목l</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목m</h2></li>
				<li class="imgBook"><img src="${resPath}/img/imgredy.jpg" alt="bookimg">
					<h2 title="">제목n</h2></li>
			</ul>
			<button id="foorightbtn">&gt;</button>
		</section>
		<div class="clear"></div>
		<section class="contentB">
			<div class="contentBnotice abtr">
				<h1>공지사항</h1>
				<a class="contentBA" href="#">바로가기</a>
				<!-- DB에서 받아올 것 -->
				<table class="contentBtbl">
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
				</table>
			</div>
			<div class="contentBnotice bbtr">
				<h1>자유게시판</h1>
				<p class="contentBA" href="#">바로가기</p>
				<!-- DB에서 받아올 것 -->
				<table class="contentBtbl">
					<tr class="contentBtr ">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
				</table>
			</div>
			<div class="contentBnotice cbtr">
				<h1>유머게시판</h1>
				<p class="contentBA" href="#">바로가기</p>
				<!-- DB에서 받아올 것 -->
				<table class="contentBtbl">
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
				</table>
			</div>
			<div class="contentBnotice dbtr">
				<h1>질문 게시판</h1>
				<p class="contentBA" href="#">바로가기</p>
				<!-- DB에서 받아올 것 -->
				<table class="contentBtbl">
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
					<tr class="contentBtr">
						<td><a href="#" class="hover">나는 공지사항 위치다</a></td>
					</tr>
				</table>
			</div>
		</section>
	</div>
	<div class="clear"></div>
	<div id="iconContent">
		<div id="iconContainer">
			<div class="iconMenu">
				<div class="iconBox">
					<a href="#"><img
						src="${rootPath}/resources/img/homeimg/icon/order-icon1.png"></a>
				</div>
				<a href="#">도서 신청</a>
			</div>
			<div class="iconMenu">
				<div class="iconBox">
					<a href="/uri/book/menu/qna/qnaList"><img
						src="${rootPath}/resources/img/homeimg/icon/Q&A-icon1.png"></a>
				</div>
				<a href="/uri/book/menu/qna/qnaList">질의 응답</a>
			</div>
			<div class="iconMenu">
				<div class="iconBox">
					<a href="/uri/book/menu/mapinfo"><img
						src="${rootPath}/resources/img/homeimg/icon/map-icon1.png"></a>
				</div>
				<a href="/uri/book/menu/mapinfo">지도 검색</a>
			</div>
			<div class="iconMenu">
				<div class="iconBox">
					<a href="/uri/book/bookSelect/bookList"><img
						src="${rootPath}/resources/img/homeimg/icon/rental-icon1.png"></a>
				</div>
				<a href="/uri/book/bookSelect/bookList">대출하기</a>
			</div>
			<div class="iconMenu">
				<div class="iconBox">
					<a href="/uri/book/menu/infoUse"><img
						src="${rootPath}/resources/img/homeimg/icon/info-icon1.png"></a>
				</div>
				<a href="/uri/book/menu/infoUse">이용 안내</a>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
	<script>
		$(function() {
			var $careNum = 0;
			var $theSize = 4;
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

			/* 추천도서 / 신간도서 부분 */
			function cuscolorchange(value) {
				var goBest = document.getElementById("goBest");
				var goNew = document.getElementById("goNew");
				if (value == 'goBest') {
					goBest.style.color = "black";
					goNew.style.color = "gray";
				} else {
					goBest.style.color = "gray";
					goNew.style.color = "black";
				}
			}

			/* 추천도서 신간도서 슬라이드 부분 */
			var bcareNum = 0;
			var bcareSize = 14; //0~14까지
			var btoggle = 0;

			function numcount() {
				bcareNum1 = bcareNum + 1;
				bcareNum2 = bcareNum + 2;
				bcareNum3 = bcareNum + 3;
				bcareNum4 = bcareNum + 4;
				bcareNum5 = bcareNum + 5;
				bcareNum6 = bcareNum + 6;
			}

			function bestBookfun() {
				numcount();
				$("#bestBook li").hide();
				$("#bestBook li").eq(bcareNum6).show();
				$("#bestBook li").eq(bcareNum5).show();
				$("#bestBook li").eq(bcareNum4).show();
				$("#bestBook li").eq(bcareNum3).show();
				$("#bestBook li").eq(bcareNum2).show();
				$("#bestBook li").eq(bcareNum1).show();
				$("#bestBook li").eq(bcareNum).show();
			}
			function newBookfun() {
				numcount();
				$("#newBook li").hide();
				$("#newBook li").eq(bcareNum6).show();
				$("#newBook li").eq(bcareNum5).show();
				$("#newBook li").eq(bcareNum4).show();
				$("#newBook li").eq(bcareNum3).show();
				$("#newBook li").eq(bcareNum2).show();
				$("#newBook li").eq(bcareNum1).show();
				$("#newBook li").eq(bcareNum).show();
			}

			$("#goBest").click(function() {
				bcareNum = 0;
				$("#bestBook").show();
				$("#newBook").hide();
				bestBookfun();
				cuscolorchange('goBest');
				btoggle = 0;
			});
			$("#goNew").click(function() {
				bcareNum = 0;
				$("#newBook").show();
				$("#bestBook").hide();
				newBookfun();
				cuscolorchange('goNew');
				btoggle = 1;
			});

			$("#fooleftbtn,#foorightbtn").click(function() {
				if (btoggle == 0) {
					bestBookfun();
				} else {
					newBookfun();
				}
			});

			$("#fooleftbtn").click(function() {
				bcareNum -= 1;
				if (bcareNum < 0) {
					bcareNum = bcareSize - 7;
				}
			});
			$("#foorightbtn").click(function() {
				bcareNum += 1;
				if (bcareNum > bcareSize - 7) {
					bcareNum = 0;
				}
			});

			$("#fooleftbtn,#foorightbtn").click(function() {
				if (btoggle == 0) {
					bestBookfun();
				} else {
					newBookfun();
				}
			});
		});
	</script>
</body>
</html>