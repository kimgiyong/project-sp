<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>독후감</title>
<link rel="stylesheet" type="text/css" href="${resPath}/css/menuCss/shareCss/report.css" />
</head>
<body>
	<%@ include file="../../home.jsp"%>
	<div class="container">
		<%@ include file="../../menuHead.jsp"%>
	</div>
	<script>
		detextname.textContent = "독후감";
		callback.textContent = "홈페이지";
		callback.addEventListener("click", gohome);
	</script>
</body>
</html>