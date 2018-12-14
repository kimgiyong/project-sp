<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>질문하기</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/qnaCss/qnaInsert.css" />
</head>
<body>
	<%@ include file="../../home.jsp"%>
	<div class="container">
		<%@ include file="../../menuHead.jsp"%>
		<div id="body">
			<div class="box">
				<span class="text">제목</span><input type="text" placeholder="제목을 입력해주세요.">
			</div>
			<div class="box">
				<span class="text">상세 내용</span><textarea id="content"  placeholder="질문을 작성해주세요."></textarea>
				<button id="sendQ" onclick="sendQ()">전송</button>
			</div>
		</div>
	</div>
<%@ include file="../../footer.jsp" %>
</body>
</html>