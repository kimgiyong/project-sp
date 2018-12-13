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
	<table id="listTable">		
		<tbody>
			<tr>
				<td>1</td>
				<td><img id="bookImg" src="#"><br><span class="bookTitle">제목</span></td>
				<td>
					저작자 : 김기용<br><br>
					출판사 : 은향사<br><br>
					좋아요 개수 : 0<br><br> 
					출판일 : 2018.12.05
				</td>
				<td><a href="/uri/book/bookSelect/bookOne" class="hover">상세정보</a></td>
			</tr>
		</tbody>
	</table>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>