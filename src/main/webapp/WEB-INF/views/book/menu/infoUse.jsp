<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>이용안내</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/infoUse.css" />
</head>
<body>
	<%@ include file="../home.jsp"%>
	<div class="container">
		<%@ include file="../menuHead.jsp"%>
		<div id="tags">
			<a href="#borrow" class="abtn">#대출방법</a> <a href="#borrowInfo"
				class="abtn">#대출안내</a> <a href="#apply" class="abtn">#도서신청</a> <a
				href="#seach" class="abtn">#도서찾기</a> <a href="#donate" class="abtn">#기부방법</a>
			<a href="#donateUses" class="abtn">#기부활용처</a>
		</div>

		<div id="content">
			<div id="borrow" class="contentDiv">
				<span class="title">대출 방법</span>
				<div class="details">
					1.상단 메뉴 왼쪽 첫번째 칸의 첫번재 줄에 있는 도서 대출로 들어가서 <br>&ensp;대출하고 싶은 도서를
					상단의 메뉴바에 검색후 '상세보기'를 클릭후 대출하기 버튼을 클릭한다.<br> <br>2.상단의
					검색박스에 대출할 책을 검색하고 상세정보를 클릭후 재고가 남아있다면 대출하기 버튼을 누른다.

				</div>
			</div>
			<div id="borrowInfo" class="contentDiv">
				<span class="title">대출 안내</span>
				<div class="details">
					저희 도서관은 등급제로 운영이 되며<br> 가장 높은 등급 부터'영원한 책의 친구', '책의 친한 친구',
					'책의 친구', '책과는 아직 낯선 사람', '손님' 으로 5가지의 등급제로 운영이 됩니다.<br>
					<br> <span class="ranking one">'영원한 책의 친구'</span><br> 최대
					10권의 책을 빌릴 수 있으며 한 번 빌릴수 있는 기간이 1달로 연장 됩니다.<br>
					<br> <span class="ranking two">'책의 친한 친구'</span> <br> 최대
					5권의 책을 빌릴 수 있으며 한 번 빌릴수 있는 기간이 20일로 연장 됩니다.<br>
					<br> <span class="ranking three">'책의 친구'</span><br> 최대
					3권의 책을 빌릴 수 있으며 한 번 빌릴 수 있는 기간이 2주로 연장 됩니다.<br>
					<br> <span class="ranking fore">'책과는 아직 낯선 사람'</span><br>최대
					2권의 책을 빌릴 수 있으며 한 번 빌릴 수 있는 기간이 1주일 입니다.<br> &emsp;<span
						class="texta">* 기본 등급으로 좋은향 홈페이지에 회원가입을하시면 올라가는 등급입니다.</span><br>
					<br> <span class="ranking five">'손님'</span><br>
					<span class="texta">'손님'등급으로는 책을 빌릴 수 없으며 회원가입을 해야 합니다.</span><br>
					<br> 등급은 일정 포인트 이상이 되면 자동으로 승급이 가능합니다.<br> 또한, 기부를 하신다면
					소정의 포인트를 쌓아 최대 '책의 친구'등급 까지 올라 가실 수 있습니다.<br> <br> <span
						class="textb">※ 포인트를 쌓는 방법</span><br> &emsp;1.반납기간을 잘 지켜 포인트를
					쌓는다.<br> &emsp;2.책을 자주 빌려 읽으며 포인트를 쌓는다.<br> &emsp;3.기부금을
					내어 포인트를 얻는다.<br>
				</div>
			</div>
			<div id="apply" class="contentDiv">
				<span class="title">도서 신청</span>
				<div class="details">원하는 도서의 책 제목과 저자, 출판사 등의 정보등을 기재해서 올려주시면
					도서관에서 그 책을 구매해 배치해 둡니다.</div>
			</div>
			<div id="seach" class="contentDiv">
				<span class="title">도서 찾기</span>
				<div class="details">
					딱히 제목이나 작가나 출판사가 아니라 그냥 아무거나 검색하고 싶으면<br> 상단에 보이는 검색 창에 검색할
					내용을 쓰고 우측에 있는 동그라미 버튼을 누른다.<br> 상단에 보이는 검색 창에 원하는 책의 제목이나, 작가,
					출판사 별로 검색을 할 수 있다.<br>
					<br> <span class="ex">예시 )</span>
					<div class="capchurimg">
						<div class="capimg2">
							<img src="${resPath}/img/menu/userinfo/capchur1.PNG"
								alt="capchur1.png">
						</div>
						<br>
						<div class="capimg2">
							<img src="${resPath}/img/menu/userinfo/capchur2.PNG"
								alt="capchur2.png">
						</div>
						<br>
						<div class="capimg2">
							<img src="${resPath}/img/menu/userinfo/capchur3.PNG"
								alt="capchur3.png">
						</div>
						<br>
					</div>
				</div>
			</div>
			<div id="donate" class="contentDiv">
				<span class="title">기부 방법</span>
				<div class="details">
					은행 : 우리나라 은행<br> 계좌번호 : 2000-12-12345678 <br> 받는사람 이름 :
					김모모
				</div>
			</div>
			<div id="donateUses" class="contentDiv">
				<span class="title">기부 활용처</span>
				<div class="details">
					기부비 및 후원비는 좋은향 도서관의 관리 및 유지비로 사용 됩니다.<br> 또한 남는 금액은 모아서 도서관의
					이벤트와 도서 신청이 들어온 도서 구매에사용하여 도서관의 계발에 노력할 것입니다.
				</div>
			</div>
		</div>
		<div class="contentDiv lastdiv">
			다른 궁금한 사항이 있으시면 Q&A에 질문을 올려주세요!<br> 저희가 24시간 이내에 친절하고 빠르게
			알려드리겠습니다. ^^
		</div>
		<div class="topslide">
			<a class="topa">Top</a>
		</div>
	</div>
	<%@ include file="../footer.jsp"%>
</body>
<script>
	$(document).ready(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 200) {
				$('.topa').fadeIn();
			} else {
				$('.topa').fadeOut();
			}
		});
		$('.topa').click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 400);
			return false;
		});
	});
	
	jQuery(document).ready(function($) {
	    $(".abtn").click(function(event){            
	            event.preventDefault();
	            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
	    });
	});

	detextname.textContent = "도서관 이용안내";
	callback.textContent = "홈페이지";
	callback.addEventListener("click", gohome);
</script>
</html>