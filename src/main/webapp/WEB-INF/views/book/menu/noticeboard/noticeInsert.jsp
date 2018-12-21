<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/noticeboardCss/noticeInsert.css" />
</head>

<body>
<%@ include file="../../home.jsp"%>
<div class="container"> 
	<%@ include file="../../menuHead.jsp"%>
		<ul id="noticeKind">  
			<li><a href="/postCode?postCode=F">자유게시판</a></li>
			<li><a href="/postCode?postCode=H">유머게시판</a></li>
			<li><a href="/postCode?postCode=Q">질문게시판</a></li>
			<li id="selected"><a href="/uri/book/menu/noticeboard/noticeInsert">게시글작성</a></li>
		</ul>
		<div id="addNoticeBox">
			<div id="head"><%-- <%=user.getUserName()%> --%>회원님의 게시물</div>
			<div id="title">
				<span class="text">제목</span>
				<input type="text" placeholder="제목을 작성해 주십시오.">
			</div>
			<div id="contents">
				<span class="text">내용</span><br>
				<textarea placeholder="내용을 입력해 주십시오."></textarea>
			</div>
		</div>
</div>
<%@ include file="../../footer.jsp" %>
</body>
<script>
detextname.textContent = "게시물 작성";
callback.textContent = "돌아가기";
callback.addEventListener("click", goback);
</script>
</html>