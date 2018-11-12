<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>스프링테스트</title>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/loginPage.css" />
</head>
<body>
	<div id="container">
		<div id="back">
			<h1 id="logo">좋은향 도서관</h1>

			<input id="userId" type="text" placeholder="Account Email" /><br>
			<input id="userPwd" type="password" placeholder="password" /><br>
			<input id="userjoin" type="hidden" placeholder="retype password" /><br>

			<button disabled="true" id="loginbtn">LOGIN</button>
			<br> <a id="forgot" href="forgetIP">Forgot your ID or Password?</a> 
			<span id="zz">/</span>
			<button id="signup">sign up</button>
		</div>

		<p id="foo">ⓒ UDP Technology</p>
	</div>
</body>

<script>
	var id = document.getElementById("userId");
	var pwd = document.getElementById("userPwd");
	var join = document.getElementById("userjoin");
	var btn = document.getElementById("loginbtn");
	var signup = document.getElementById("signup");
	alert("A");
	
	var loge1 = document.getElementById("loge1");
	var loge0 = document.getElementById("loge0");
	/* var loge = Request.getAttribute("loge"); */
	
	/* alert(loge); */
	alert(loge1);
	alert(loge0);
	function colorCheck() {
		if (btn.textContent == "Create account") {
			if (id.value != "" && pwd.value != "" && join.value != "") {
				if (pwd.value == join.value) {
					btn.disabled = false;
					btn.style.backgroundColor = "lightsteelblue";
				}
			} else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		} else {
			if (id.value != "" && pwd.value != "") {
				btn.disabled = false;
				btn.style.backgroundColor = "lightsteelblue";
			} else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		}
	}

	function login() {
		var data = {
			id : id.value,
			password : pwd.value
		};
		var json = JSON.stringify({
			id : id.value,
			password : pwd.value,
			passwordcheck : join.value
		});
		var backToObj = JSON.parse(json);
		console.log(backToObj);
		if (btn.textContent == "Create account") {
			if (pwd.value != join.value) {
				alert("삐! 비밀번호가 다릅니다. 다시입력해주세요.");
			} else {
				alert("회원가입에 성공하셨습니다.");
			}
		}
	}

	function sign() {
		if (signup.textContent == "sign up") {
			btn.textContent = "Create account";
			join.type = "password";
			signup.textContent = "sign in";
		} else {
			btn.textContent = "Login";
			join.type = "hidden";
			signup.textContent = "sign up";
		}
	}

	id.addEventListener("keyup", colorCheck);
	pwd.addEventListener("keyup", colorCheck);
	join.addEventListener("keyup", colorCheck);
	btn.addEventListener("click", login);
	signup.addEventListener("click", sign);
</script>
</html>