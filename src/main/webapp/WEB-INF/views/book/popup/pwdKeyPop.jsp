<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>인증페이지</title>
<style>
* {
	margin: 0 auto;
	padding: 0 auto;
}

body {
	background-color: #303000;
}

button {
	background-color: transparent;
	width: 180px;
	height: 70px;
	font-size: 20px;
	border-radius: 20px;
	margin: 2px;
	background-color: rgba(255,255,255,0.2);
	box-shadow: 2px 2px 10px 2px gray;
}

button:nth-child(2){
	width: 100px;
}

button:hover{
	cursor:pointer;
	font-weight: bold;
}

#backline {
	border: double 5px #4c4c45;
	background-color: #fffadd;
	padding: 20px;
	margin: 20px;
	text-align: center;
}

#labelpopup {
	font-size: 24px;
}

input {
	font-size: 24px;
}

#backline h1 {
	margin-bottom: 20px;
}

#btnline{
	margin-top: 20px;
}
p{
	margin-bottom: 20px;
	font-size: 20px;
	color: darkblue;
}
</style>
</head>

<body>
	<input type="hidden" id="keyValue">
	<input type="hidden" id="userId">
	<div id="backline">
		<h1>비밀번호 인증페이지</h1>
		<p>인증을 완료하고 비밀번호를 재설정해주세요.</p>
		<label id="labelpopup">인증번호</label> <input type="text" id="popup"><br>
		<div id="btnline">
			<button onclick="check()">인증번호 확인</button>		
			<button onclick="self.close();">취소</button>
		</div>
	</div>

<script>
var count = 0;
function check() {
	var key = document.querySelector('#keyValue').value;
	var inkey = document.querySelector('#popup').value;
	var userId = document.querySelector('#userId').value;
	alert(key);
	if(key == inkey){
		alert('인증번호 인증에 성공하였습니다.');
		opener.location.href="/uri/book/login/"+ userId;
		self.close();
	}else{
		if(count==3){
			alert('인증번호 인증을 3회 실패하였습니다. 로그인 페이지로 돌아갑니다.');
			opener.location.href="/uri/book/login/loginPage";
			self.close();
		}
		count++;
		alert('인증번호가 틀렸습니다. 앞으로 입력할 기회가' + (3-count) + '회 남았습니다.');
	}
}
</script>
</body>
</html>