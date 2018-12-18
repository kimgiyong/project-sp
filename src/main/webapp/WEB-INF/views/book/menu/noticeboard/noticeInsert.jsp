<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>게시글작성</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/noticeboardCss/noticeInsert.css" />
</head>
<body>
<%@ include file="../../home.jsp"%>
<div class="container">
<%@ include file="../../menuHead.jsp" %>
	<span class="items">신청 도서명</span><span> * 필수 </span>
	<input type="text" placeholder="책 이름을 입력해 주십시오.">
	<span class="items">작가</span><span> * 필수 </span>
	<input type="text" placeholder="작가의 이름을 입력해 주십시오.">
	<span class="items">출판일</span>
	<input type="date">
	<span class="items"></span>
</div>
<%@ include file="../../footer.jsp"%>
</body>
</html>