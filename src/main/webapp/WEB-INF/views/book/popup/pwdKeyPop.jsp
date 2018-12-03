<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>

<body>
뺴애애애액
<button onclick="self.close();"></button>
<button onclick="moveClose()"></button>
<script>
function moveClose() {
	  opener.location.href="/uri/book/homePage";
	  self.close();
	}
</script>
</body>
</html>