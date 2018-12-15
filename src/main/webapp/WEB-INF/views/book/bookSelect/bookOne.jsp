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
			<td><img id="bookImg" src="${resPath}/img/imgredy.jpg"></td>
			<td><ul>
				<li>도서명 : ${books.bookName}</li>
				<li>저작자 : ${books.bookWriter}</li>
				<li>출판사 : ${books.bookPub}</li>
				<li>출판년도 : ${books.bookYear}</li>
				<li><span id="like">좋아요 : ${books.bookLike}</span><button id="likeToggle"><img  id="likeImg" src="/resources/img/spaceHeart.png"></button></li>
				<li>수량 : ${books.bookAmount}</li>
			</ul></td>
			<td rowspan="2"><button class="bookOnebtn bor">대출하기</button><br><button class="bookOnebtn web" onclick="goSearchpage()">웹서치<!-- 에서 책정보  찾기 --></button></td> 
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
<script>
	var likeToggle = document.getElementById("likeToggle");
	var likeImg = document.getElementById("likeImg");
	var like = document.getElementById("like");
	detextname.textContent = "상세 정보";	
	likeToggle.addEventListener("click",likeClick);
	function likeClick(){
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
	}
	
	function goSearchpage(){
		window.open("https://book.naver.com/search/search.nhn?sm=sta_hty.book&sug=&where=nexearch&query=책이름");
	}
	function doin(){
		if('<%=user%>'=='null'){
			likeToggle.style.display="none";
		}else if('<%=user%>'!='null'){
			var userN = <%=userNum%>;
			like.style.position="relative";
			like.style.top="-20px";
			var conf = { 
					url:'/bookLike',
					method:'GET',
					param:JSON.stringify({
						userNum:userN, bookCode:'${books.bookCode}'
					}),
					success:function(res){
						if(res==1){
							likeImg.src = "/resources/img/heart.png";
						}else if(res==0){
							likeImg.src = "/resources/img/spaceHeart.png";
						}
					}
			}
			au.send(conf);
		}
	}
	window.addEventListener('load',doin);
	/* callback.addEventLitener("click",history.go(-1))  */
</script>
</body>
</html>