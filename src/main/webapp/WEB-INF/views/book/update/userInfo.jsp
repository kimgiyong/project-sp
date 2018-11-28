<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>로그인/회원가입페이지</title>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/loginCss/loginPage.css" />
</head>
<body>
<% String loge = (String)request.getParameter("loge"); %>

	<div id="container">
	<div id="lodiv"><a href="../homePage"><h1 id="logo">좋은<span id="hyang">향</span> 도서관</h1></a></div>
		<div id="back">
			<h1 id="log">회원정보</h1> 

			아이디 : <input id="userId" type="text" disabled="true" placeholder="${userId}"/><br>
			이름  : <input id="userId" type="text" disabled="true" placeholder="${userName}"/><br>
			생일 : <input id="userId" type="text" disabled="true" placeholder="${userBir}"/><br>
			번호 : <input id="userId" type="text" disabled="true" placeholder="${userNumber}"/><br>	

			<button disabled="true" id="loginbtn">정보 수정</button>
		</div>
		<p id="foo">ⓒ UDP Technology</p>
	</div>
</body>
</html>