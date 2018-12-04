<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>인증페이지</title>
<style>
	*{
		margin: 0 auto;
		padding: 0 auto;
	}
	body{
		background-color: #808000;
	}
	button{
		background-color:transparent;
		width: 120px;
		height: 60px;
	}
	#backline{
		border: double 5px #4c4c45; 
		background-color:#fffadd;
		margin: 20px;
		padding:20px;
	}
	#labelpopup{
		font-size: 24px;
	}
	input{
		font-size: 24px;
	}
	#backline h1{
		margin-bottom: 20px;
	}
</style>
</head>

<body>

	<div id="backline">
		<h1>비밀번호 인증페이지</h1>
		<label id="labelpopup">인증번호</label> <input type="text" id="popup"><br>

		<button onclick="self.close();">취소</button>
		<button onclick="moveClose()">홈으로가기</button>
	</div>

	<script>
function moveClose() {
	  opener.location.href="/uri/book/homePage";
	  self.close();
	}
</script>
</body>
</html>