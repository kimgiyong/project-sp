<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/bookSelectCss/bookList.css" />
</head>
<body>
<%@ include file="../home.jsp"%>
<hr>
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
	<span id="leftMove" class="pBtn">◀◀</span>
	<span id="leftM" class="pBtn">◀</span>
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
	<span id="rightM" class="pBtn">▶</span>
	<span id="rightMove" class="pBtn">▶▶</span>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>