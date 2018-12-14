<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>도서목록</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/bookSelectCss/bookList.css" />
</head>
<body>
<%@ include file="../home.jsp"%>
<hr>
<%
String bookName = request.getParameter("bookName");
String bookPub = request.getParameter("bookPub");
String bookWriter = request.getParameter("bookWriter");
String pageS = request.getParameter("pageS");
%>
<div class="container">
	<div id="listHead">
		<span>통합검색</span>
		<h3><a href="/uri/book/homePage">홈페이지</a></h3>
	</div>
	
	<h2 id="tableTitle">자료 검색 결과</h2>
	
	<ul id="sortList">
		<li>정렬</li>
		<li><a href="#">인기순 ▼</a></li>
		<li><a href="#">최신순 ▼</a></li>
		<li><a href="#">글자순 ▼</a></li>
	</ul>
	<c:forEach var="list" items="${books}" varStatus="sta">
		<table id="listTable">		
			<tbody>
				<tr>
					<td><c:out value="${sta.count+page.pageStart}"/></td>
					<td id="tds"><img id="bookImg" src="#"><br><span class="bookTitle">${list.bookName}</span></td>
					<td id="tds2">
						저작자 : ${list.bookWriter}<br><br>
						출판사 : ${list.bookPub}<br><br>
						좋아요 개수 : ${list.bookLike}<br><br> 
						출판년도 : ${list.bookYear}
					</td>
					<td id="tds3"><a href="/book/${list.bookCode}" class="hover">상세정보</a></td>
				</tr>
			</tbody>
		</table>
	</c:forEach>
	<div id="page">
	<button id="start" class="pBtn">처음으로</button>
	<button id="leftMoveTen" class="pBtn">◀◀</button>
	<button id="leftMove" class="pBtn">◀</button>
	<c:forEach var="a" begin="${page.startPage}" end="${page.endPage}">
	<c:if test="${a!=page.pageN}">
		<span><a href="/bookList?bookName=<%=request.getParameter("bookName")%>&bookPub=<%=request.getParameter("bookPub")%>&
		bookWriter=<%=request.getParameter("bookWriter")%>&pageS=${a}">[${a}]</a></span>
	</c:if>
	<c:if test="${a==page.pageN}">
		<span><a href="/bookList?bookName=<%=request.getParameter("bookName")%>&bookPub=<%=request.getParameter("bookPub")%>&
		bookWriter=<%=request.getParameter("bookWriter")%>&pageS=${a}" id="nowP">[${a}]</a></span>
	</c:if>
	</c:forEach>
	<button id="rightMove" class="pBtn">▶</button>
	<button id="rightMoveTen" class="pBtn">▶▶</button>
	<button id="ends" class="pBtn">끝으로</button>
	</div>
</div>
<%@ include file="../footer.jsp"%>
<script>
var leftMoveTen = document.querySelector('#leftMoveTen');
var leftMove = document.querySelector('#leftMove');
var rightMoveTen = document.querySelector('#rightMoveTen');
var rightMove = document.querySelector('#rightMove');
var startBtn = document.querySelector('#start');
var endsBtn = document.querySelector('#ends');
function Mov(event){
	if(event.target.id=='leftMoveTen'){
		var page = (parseInt((<%=pageS%>-11)/10)*10)+1;
		if(<%=pageS%><=1){
			page = 1;
		}
		location.href='/bookList?bookName=<%=bookName%>&bookPub=<%=bookPub%>&bookWriter=<%=bookWriter%>&pageS='+page;
	}else if(event.target.id=='leftMove'){
		var page = <%=pageS%>-1;
		if(<%=pageS%><1){
			page = 1;
		}
		location.href='/bookList?bookName=<%=bookName%>&bookPub=<%=bookPub%>&bookWriter=<%=bookWriter%>&pageS='+page;
	}else if(event.target.id=='rightMoveTen'){
		var page = (parseInt((<%=pageS%>-1)/10)*10)+11;
		if(<%=pageS%>>=(parseInt(${(page.pageT-1)}/10)*10)+1){
			page = ${page.pageT};
		}
		location.href='/bookList?bookName=<%=bookName%>&bookPub=<%=bookPub%>&bookWriter=<%=bookWriter%>&pageS='+page;
	}else if(event.target.id=='rightMove'){
		var page = <%=pageS%>+1;
		if(<%=pageS%>>${page.pageT}){
			page = ${page.pageT};
		}
		location.href='/bookList?bookName=<%=bookName%>&bookPub=<%=bookPub%>&bookWriter=<%=bookWriter%>&pageS='+page;
	}else if(event.target.id=='start'){
		var page = 1;
		location.href='/bookList?bookName=<%=bookName%>&bookPub=<%=bookPub%>&bookWriter=<%=bookWriter%>&pageS='+page;
	}else if(event.target.id=='ends'){
		var page = ${page.pageT};
		location.href='/bookList?bookName=<%=bookName%>&bookPub=<%=bookPub%>&bookWriter=<%=bookWriter%>&pageS='+page;
	}
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