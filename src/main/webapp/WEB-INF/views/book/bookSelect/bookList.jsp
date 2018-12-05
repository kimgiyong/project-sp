<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<body>
<%@ include file="../home.jsp"%>
<hr>
<div class="container">
	<table id="listTable">
		<thead>
			<tr>
				<th>정렬</th>
				<th><a href="#">인기순</a></th>
				<th><a href="#">최신순</a></th>
				<th><a href="#">페이지순</a></th>
			</tr>
			<tr>
				<td>1</td>
				<td><img src="#"><br><span class="bookTitle">제목</span></td>
				<td>
					저작자 : 김기용<br><br>
					출판사 : 은향사<br><br>
					출판일 : 2018.12.05
				</td>
				<td><a href="#">상세정보</a></td>
			</tr>
			<tr><td colspan="4"><hr></td></tr>
		</thead>
	</table>
</div>
</body>
</html>