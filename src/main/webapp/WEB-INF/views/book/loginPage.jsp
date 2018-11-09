<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>스프링테스트</title>
<style>
* {
	margin: 0px auto;
	padding: 0px auto;
	font-size: 17px;
}

html, body {
	height: 100%;
}

#container {
	text-align: center;
	background-color: skyblue;
	height: 100%;
	background-image:
		url("https://image.shutterstock.com/image-photo/blurred-image-colorful-books-shelves-260nw-794129833.jpg");
	background-size: cover;
	background-position: center center;
	background-repeat: no-repeat;
	padding: 10% 0;
}

h1 {
	font-size: 250%;
}

#back {
	background-color: rgba(255, 255, 255, 0.5);
	width: 80%;
	height: 60%;
}

#loginbtn {
	color: white;
	background-color: lightslategray;
	border-radius: 7px;
	width: 20%;
	height: 12%;
	margin: 10px 20px 5px 20px;
	border: 0px;
	font-size: 120%;
}

#forgot {
	/*   color:royalblue; */
	color: navy;
}

#logo {
	padding-top: 5%;
	color: white;
	text-shadow: 3px 3px 3px gray;
	font-family:'cursive';
}

input {
	border: 0px;
	border-bottom: solid 1px darkblue;
	background-color: transparent;
	width: 21%;
	margin: 10px;
	padding: 10px;
}

input {
	color: white;
}

a {
	font-size: 70%;
	text-decoration: none;
}

#foo {
	font-size: 60%;
	color: white;
	margin-top: 2%;
}

#signup {
	background-color: transparent;
	border: 0px;
	/*   color:royalblue; */
	color: navy;
	font-size: 70%;
	cursor: pointer;
}

#zz {
	color: navy;
	font-size: 70%;
}

#userjoin {
	border-top: dotted 1px white;
}
</style>
</head>
<body>
	<div id="container">
		<div id="back">
			<h1 id="logo">좋은향 도서관</h1>

			<input id="userId" type="text" placeholder="Account Email" /><br>
			<input id="userPwd" type="password" placeholder="password" /><br>
			<input id="userjoin" type="hidden" placeholder="retype password" /><br>

			<button disabled="true" id="loginbtn">LOGIN</button>
			<br> <a id="forgot" href="#">Forgot your ID or Password?</a> <span
				id="zz">/</span>
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

	function check() {
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

	id.addEventListener("keyup", check);
	pwd.addEventListener("keyup", check);
	join.addEventListener("keyup", check);
	btn.addEventListener("click", login);
	signup.addEventListener("click", sign);
</script>
</html>