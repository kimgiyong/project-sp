<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>이용안내</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuHead.css" />
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/infoUse.css" />
</head><!-- 아무나 이곳에 내용을 채워주오. . . -->
<body>
<%@ include file="../home.jsp" %>
<div class="container"> 
	<div id="listHead">
		<span>이용 안내</span> 
		<h3><a id="callback" onclick="go()">홈페이지</a></h3>
	</div>
	<div id="spaceDiv"></div>
	
	<div id="tags">
		<a href="#borrow">#대출방법</a> 
		<a href="#borrowInfo">#대출안내</a> 
		<a href="#apply">#도서신청</a>
		<a href="#seach">#도서찾기</a>
		<a href="#donate">#기부방법</a>
		<a href="#donateUses">#기부활용처</a>
	</div>
	
	<div id="content">
		<div id="borrow" class="contentDiv">
			<span class="title">대출 방법</span>
			<div class="details">
				
			</div>
		</div>
		<div id="borrowInfo" class="contentDiv">
			<span class="title">대출 안내</span>
			<div class="details">
				세부내용들이 들어갈 자리입니다.
			</div>
		</div>
		<div id="apply" class="contentDiv">
			<span class="title">도서 신청</span>
			<div class="details">
				세부내용들이 들어갈 자리입니다.
			</div>
		</div>
		<div id="seach" class="contentDiv">
			<span class="title">도서 찾기</span>
			<div class="details">
				세부내용들이 들어갈 자리입니다.
			</div>
		</div>
		<div id="donate" class="contentDiv">
			<span class="title">기부 방법</span>
			<div class="details">
				세부내용들이 들어갈 자리입니다.
			</div>
		</div>
		<div id="donateUses" class="contentDiv">
			<span class="title">기부  활용처</span>
			<div class="details">
				세부내용들이 들어갈 자리입니다.
			</div>
	</div>
</div>
		다른 궁금한 사항이 있으시면 Q&A에 질문을 올려주세요!<br>
		저희가 친절하게 알려드리겠습니다. ^^ 
		</div>
<%@ include file="../footer.jsp" %>
</body>
<script>
 function go(){
	 location.href="/uri/book/homePage";
 }
</script>
</html>