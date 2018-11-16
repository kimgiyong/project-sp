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
<% String loge = (String)request.getParameter("loge"); %>

	<div id="container">
	<a href="../book/homePage"><h1 id="logo">좋은<span id="hyang">향</span> 도서관</h1></a>
		<div id="back">
			<h1 id="log">LOGIN</h1>

			<input id="userId" type="text" placeholder="Account Id" /><br>
			<input id="userPwd" type="password" placeholder="password" /><br>
			<input id="userPwdchk" type="hidden" placeholder="retype password" /><br>
			<input id="userName" type="hidden" placeholder="name" /><br>
			<input id="userBir" type="hidden" placeholder="Birthday" /><br>
			<input id="userNumber" type="hidden" placeholder="Phone number" /><br>

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
	var pwdchk = document.getElementById("userPwdchk");
	
	var name = document.getElementById("userName");
	var birthday = document.getElementById("userBir");
	var number = document.getElementById("userNumber");
	
	var btn = document.getElementById("loginbtn");
	var signup = document.getElementById("signup");
	var log = document.getElementById("log");	
	
	var loge = <%=loge%>;
	
	if(loge==0){
		window.addEventListener("load", function(){
			btn.textContent = "Create account";
			pwdchk.type = "password";
			name.type = "text";
			birthday.type = "date";
			number.type = "text";
			signup.textContent = "sign in";
			log.textContent = "JOIN"
		});
	};/* 여기가 들어갈때 확인해서 join쪽이면 바꿔줌 */
	
	function colorCheck() { /* not null 같은 코드  */
		if (btn.textContent == "Create account") { /* 회원가입 할때 not null 안쓰면 회원가입 안됨 */
			if (id.value != "" && pwd.value != "" && pwdchk.value != "" && name.value != "" && birthday.value != "" && number.value != "") {
				if (pwd.value == pwdchk.value) {
					btn.disabled = false;
					btn.style.backgroundColor = "lightsteelblue";
				}
			} else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		} else { /* 로그인할때 아이디나 패스워드 중에 안쓰면 로그인 안됨 */
			if (id.value != "" && pwd.value != "") {
				btn.disabled = false;
				btn.style.backgroundColor = "lightsteelblue";
			} else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		}
	}

	function login() { /* 회원가입할때 비밀번호가 다르면 alert창에 띄어줌 밖에 없어 */
		var data = {
			id : id.value,
			password : pwd.value
		};
		var json = JSON.stringify({
			id : id.value,
			password : pwd.value,
			passwordcheck : pwdchk.value
		});
		var backToObj = JSON.parse(json);
		/* console.log(backToObj); */
		if (btn.textContent == "Create account") {
			if (pwd.value != pwdchk.value) {
				alert("삐! 비밀번호가 다릅니다. 다시입력해주세요.");
			} else {
				alert("회원가입에 성공하셨습니다.");
			}
		}
	}

	function sign() {
		if (signup.textContent == "sign up") {
			btn.textContent = "Create account";
			log.textContent = "JOIN";
			pwdchk.type = "password";
			name.type = "text";
			birthday.type = "date";
			number.type = "text";
			signup.textContent = "sign in";
		} else {
			btn.textContent = "Login";
			log.textContent = "LOGIN"
			pwdchk.type = "hidden";
			name.type = "hidden";
			birthday.type = "hidden";
			number.type = "hidden";
			signup.textContent = "sign up";
		}
	}
	
	id.addEventListener("keyup", colorCheck);
	pwd.addEventListener("keyup", colorCheck);
	pwdchk.addEventListener("keyup", colorCheck);
	btn.addEventListener("click", login);
	signup.addEventListener("click", sign);
	
</script>
</html>