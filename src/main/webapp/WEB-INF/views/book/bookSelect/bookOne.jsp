<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>좋은향 도서관</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/bookSelectCss/bookOne.css" />
</head>
<body>
<%@ include file="../home.jsp"%>
<hr>
<%
String bookCode = request.getParameter("bookCode");
String pageS = request.getParameter("pageS");
%>
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
					<td><textarea type="text" placeholder="내용을 입력하여 주십시오." id="coment"></textarea>
						<button class="commentbtn">추가</button></td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${bookComent}" varStatus="sta">
					<tr>
						<td>${list.userName}</td>
						<td><input type="text" disabled="disabled" class="comments" value="${list.comentText}"></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@ include file="../footer.jsp"%>
<script>
	var likeToggle = document.getElementById("likeToggle");
	var likeImg = document.getElementById("likeImg");
	var like = document.getElementById("like");
	var commentbtn = document.querySelector('.commentbtn');
	detextname.textContent = "상세 정보";	
	likeToggle.addEventListener("click",likeClick);
	function likeClick(){
		if(likeImg.src.match("space") == null){
			likeImg.src = "/resources/img/heart.gif";
			window.setTimeout(function() {
				likeImg.src = "/resources/img/spaceHeart.png";
			}, 750);
			var conf = {
					url:'/like',
					method:'DELETE',
					param:JSON.stringify({
						userNum:<%=userNum%>, bookCode:'${books.bookCode}'
					}),
					success:function(res){
						if(res==1){
							location.href="/bookSelect?bookCode=" + '${books.bookCode}' + '&pageS=1';
						}else{
							likeImg.src = "/resources/img/heart.png";
						}
					}
			}
			au.send(conf);
		}else{				
			likeImg.src = "/resources/img/heart.gif";
			window.setTimeout(function() {
				likeImg.src = "/resources/img/heart.png";
			}, 750);
			var conf = {
					url:'/like',
					method:'POST',
					param:JSON.stringify({
						userNum:<%=userNum%>, bookCode:'${books.bookCode}'
					}),
					success:function(res){
						if(res==1){
							location.href="/bookSelect?bookCode=" +'${books.bookCode}' + '&pageS=1';
						}else{
							likeImg.src = "/resources/img/spaceHeart.png";
						}
					}
			}
			au.send(conf);
		}
	}
	
	function goSearchpage(){
		window.open("https://book.naver.com/search/search.nhn?sm=sta_hty.book&sug=&where=nexearch&query=${books.bookName}");
	}
	function doin(){
		if('<%=user%>'=='null'){
			likeToggle.style.display="none";
		}else if('<%=user%>'!='null'){
			var userN = <%=userNum%>;
			like.style.position="relative";
			like.style.top="-20px";
			var conf = { 
					url:'/like',
					method:'GET',
					param:'userNum='+userN +'&bookCode=' + '${books.bookCode}',
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
	function comentPut(){
		if('<%=user%>'=='null'){
			alert('로그인하지 않으면 댓글을 달 수 없습니다.');
		}else if('<%=user%>'!='null'){
			var coment = document.querySelector('#coment');
			var userN = <%=userNum%>;
			var userNa = '<%=userName%>';
			var conf = { 
					url:'/bookComent',
					method:'POST',
					param:JSON.stringify({
						userNum:userN, bookCode:'${books.bookCode}', comentText:coment.value,
						userName:userNa
					}),
					success:function(res){
						if(res==1){
							location.href="/bookSelect?bookCode=" + '${books.bookCode}' + "&pageS=1";
						}else if(res==0){
							alert('댓글 달기 실패하였습니다.');
						}
					}
			}
			au.send(conf);
		}
	}
	window.addEventListener('load',doin);
	commentbtn.addEventListener('click',comentPut);
	/* callback.addEventLitener("click",history.go(-1))  */
var leftMoveTen = document.querySelector('#leftMoveTen');
var leftMove = document.querySelector('#leftMove');
var rightMoveTen = document.querySelector('#rightMoveTen');
var rightMove = document.querySelector('#rightMove');
var startBtn = document.querySelector('#start');
var endsBtn = document.querySelector('#ends');
function Mov(event){
	var page;
	if(event.target.id=='leftMoveTen'){
		page = (parseInt((<%=pageS%>-11)/10)*10)+1;
		if(<%=pageS%><=1){
			page = 1;
		}
	}else if(event.target.id=='leftMove'){
		page = <%=pageS%>-1;
		if(<%=pageS%><=1){
			page = 1;
		}
	}else if(event.target.id=='rightMoveTen'){
		page = (parseInt((<%=pageS%>-1)/10)*10)+11;
		if(<%=pageS%>>=(parseInt(${(page.pageT-1)}/10)*10)+1){
			page = ${page.pageT};
		}
	}else if(event.target.id=='rightMove'){
		page = <%=pageS%>+1;
		if(<%=pageS%>>${page.pageT}){
			page = ${page.pageT};
		}
	}else if(event.target.id=='start'){
		page = 1;
	}else if(event.target.id=='ends'){
		page = ${page.pageT};
	}
	location.href='/bookSelect?bookCode=${books.bookCode}&pageS='+page;
}
leftMoveTen.addEventListener('click',Mov);
leftMove.addEventListener('click',Mov);
rightMoveTen.addEventListener('click',Mov);
rightMove.addEventListener('click',Mov);
startBtn.addEventListener('click',Mov);
endsBtn.addEventListener('click',Mov);
</script>
</body>
</html>