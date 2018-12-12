<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>도서관 소개</title>
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/menuCss/history.css">
</head>
<body>
	<%@ include file="../home.jsp"%>
	<%@ include file="../menuHead.jsp" %>
	<section id="historysection">
		<img src="${resPath}/img/menu/flowers1.png">
		<div>
			
		</div>
		
	</section>
	<%@ include file="../footer.jsp" %>
	<script>
		detextname.textContent = "도서관 소개";
		callback.addEventListener("click", gohome);
	</script>
</body>
</html>