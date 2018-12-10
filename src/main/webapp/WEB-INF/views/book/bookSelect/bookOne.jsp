<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/bookSelectCss/bookOne.css" />
</head>
<body>
<%@ include file="../home.jsp"%>
<hr>
<div class="container">
<%@ include file="../menuHead.jsp" %>
	<table id="bookInfoTbl" border="1">
		<tr>
			<td><img id="bookImg" src="#"></td>
			<td><ul>
				<li>도서명 : 책이름</li>
				<li>저작자 : 작가이름</li>
				<li>출판사 : 출판사이름</li>
				<li>출판일 : 출판 날짜</li>
				<li><span id="like">좋아요 : 좋아요개수</span><button id="likeToggle"><img  id="likeImg" src="/resources/img/heart.png"></button></li>
				<li>수량 : 재고수</li>
			</ul></td>
			<td rowspan="2"><button class="bookOnebtn">대출하기</button><br><button class="bookOnebtn" onclick="goSearchpage()">웹에서 책정보  찾기</button></td> 
		</tr>
	</table>
	
	<div id="commentsContainer">
		<table id="tableComment" border="1" style="border-collapse:collapse">
			<thead>
				<tr>
					<td colspan="3"></td>
				</tr>
				<tr>
					<td>댓글달기</td>
					<td><textarea type="text" placeholder="내용을 입력하여 주십시오." id="comment"></textarea>
						<button class="commentbtn">추가</button></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>회원 이름님</td>
					<td><input type="text" disabled="disabled" class="comments"></td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<%@ include file="../footer.jsp"%>
</body>
<script>
	var likeToggle = document.getElementById("likeToggle");
	var likeImg = document.getElementById("likeImg");
	var callback =  document.getElementById("callback");
		
	likeToggle.addEventListener("click",function(){
		if(likeImg.src.match("space") == null){
			likeImg.src = "/resources/img/heart.gif";
			window.setTimeout(function() {
				likeImg.src = "/resources/img/spaceHeart.png";
			}, 750);			
		}else{				
			likeImg.src = "/resources/img/heart.gif";
			window.setTimeout(function() {
				likeImg.src = "/resources/img/heart.png";
			}, 750);
		}
	});
	
	function go(){
		window.history.go(-1);
	}
	
	function goSearchpage(){
		window.open("https://book.naver.com/search/search.nhn?sm=sta_hty.book&sug=&where=nexearch&query=책이름");
	}
	/* callback.addEventLitener("click",history.go(-1))  */
</script>
</html>