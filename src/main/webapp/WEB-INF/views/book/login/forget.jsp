<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>스프링테스트</title>
<style type="text/css">
button {
	border: 0;
}

* {
	margin: 0 auto;
	padding: 0 auto;
	list-style-type: none;
}

#forgetid, #forgetpwd {
	font-size: 300%;
}

#forgetid {
	float: left;
	background-color:rgba(255,25,165,0.5);
}

#forgetpwd {
	float: right;
}

#cent {
	float: left;
	text-align: ceter;
	border: solid 2px red;
	font-size: 300%;
}
</style>
</head>
<body>
	<!-- <div id="addEvent"><img alt="#" src="#"></div> -->
	<div id="cent">
		<a id="forgetid" href="forgetID"><button>아이디 찾기</button></a> 
		<a id="forgetpwd" href="forgetPwd"><button>비밀번호 찾기</button></a>
	</div>
</body>
</html>