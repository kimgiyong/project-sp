<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>로그인/회원가입페이지</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/loginCss/loginPage.css" />
</head>
<body>
	<%
		String loge = (String) request.getParameter("loge");
	%>

	<div id="container">
		<div id="lodiv">
			<a href="../homePage"><h1 id="logo">
					좋은<span id="hyang">향</span> 도서관
				</h1></a>
		</div>
		<div id="back">
			<h1 id="log">LOGIN</h1>
			<div id="sum">
			<!-- <input id="userId" type="email" placeholder="Account Email" />  -->
			<div class="input1"><input name="txtEmailId" type="text" value="" maxlength="35" id="txtEmailId" class="txt" onkeydown="if(event.keyCode==13){return false;}" placeholder="Account Email"></div>
			<div class="at">@</div>
			<div class="input1"><input name="txtEmailDomain" type="text" value="" maxlength="30" readonly="readonly" id="txtEmailDomain" class="txt" onkeydown="if(event.keyCode==13){return false;}"></div>
			<select name="ddlEmailDomain" id="ddlEmailDomain">
				<option selected="selected" value="">선택</option>
				<option value="naver.com">naver.com</option>
				<option value="hanmail.net">hanmail.net</option>
				<option value="daum.net">daum.net</option>
				<option value="nate.com">nate.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="hotmail.com">hotmail.com</option>
				<option value="direct_input">직접입력</option>
			</select> 
			<br>
			<input id="userPwd" type="password" placeholder="password" /><br>
			<div id="joinhidden">
				<input id="userPwdchk" type="password" placeholder="retype password" /><br>
				<input id="userName" type="text" placeholder="user name" maxlength="5" /><br>
				<label>생일 : </label><input id="userBir" type="date" placeholder="Birthday" /><br> 
				<!-- <input id="userNumber" type="text" placeholder="Phone number('-'없이 써주세요)" maxlength="11" onkeypress="onlyNumber();" /><br> -->
				<div id="userMobile">
					<select name="ddlMobileTel" id="ddlMobileTel">
						<option selected="selected" value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<div class="var">-</div>
					<div class="input2"><input name="txtMobileTel2" type="text" value="" maxlength="4" id="txtMobileTel2" class="txt" onblur="checkNumber(this);" onkeydown="if(event.keyCode==13){return false;}"></div>
					<div class="var">-</div>
					<div class="input2"><input name="txtMobileTel3" type="text" value="" maxlength="4" id="txtMobileTel3" class="txt" onblur="checkNumber(this);" onkeydown="if(event.keyCode==13){return false;}"></div>
				</div>
			</div>
			</div>

			<button disabled="true" id="loginbtn">LOGIN</button>
			<br> <span id="forgot">Forgot your <a id="forgetid" href="forgetID">ID</a> or <a id="forgetpwd" href="forgetPwd">Password</a>?</span>
			<!-- </a> -->
			<span id="zz">/</span>
			<button id="signup">sign up</button>
		</div>
		<p id="foo">A good incenseⓒ UDP Technology</p>
	</div>
</body>

<script>
	/* 우리는 아이디가 이메일이다! */
	var pwd = document.getElementById("userPwd");
	var pwdchk = document.getElementById("userPwdchk");
	var username = document.getElementById("userName");
	
	var birthday = document.getElementById("userBir");
	var number = document.getElementById("userMobile");
	var joinhidden = document.getElementById("joinhidden");
	
	var txtEmailDomain = document.getElementById("txtEmailDomain");
	var ddlEmailDomain = document.getElementById("ddlEmailDomain");
	var ddlMobileTel = document.getElementById("ddlMobileTel");
	
	var txtEmail = txtEmailDomain.value;
	var ddlEmail = ddlEmailDomain.value;
	var ddlMobTel = ddlMobileTel.value;

	var btn = document.getElementById("loginbtn");
	var signup = document.getElementById("signup");
	var log = document.getElementById("log");
	var loge = <%=loge%>;

	var date = new Date();

	var year = date.getFullYear(); //년도
	var month = date.getMonth() + 1; //월
	var day = date.getDate(); //일

	if ((day + "").length < 2) { // 일이 한자리 수인 경우 앞에 0을 붙여주기 위해
		day = "0" + day;
	}

	var getToday = year + '' + month + day; // 오늘 날짜 

	var id = txtEmailDomain.value + '@' + ddlMobTel;
	var checkmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var email = checkmail.test(id);
	
	/*var emailjuso = document.getElementById("emailjuso");
	var index = $("#emailjuso option").index($("#emailjuso option:selected")); */

	if (loge == 0) {
		window.addEventListener("load", function() {
			btn.textContent = "Create account";
			pwdchk.type = "password";
			joinhidden.style.display = "block";
			signup.textContent = "sign in";
			log.textContent = "JOIN"
		});
	};/* 여기가 들어갈때 확인해서 join쪽이면 바꿔줌 */

	function onlyNumber() { /* 숫자만 들어가 있는지 체크 */
		if ((event.keyCode < 48) || (event.keyCode > 57)) {
			event.returnValue = false;
		}
	}
	
	function checkEmail(){
		if(ddled=='direct_input'){
			txtEmailDomain.readOnly = false;
		}else{
			txtEmailDomain.readOnly = true;
			txtEmailDomain.textContent = ddlEmail;
		}
	}

	function colorCheck() { /* not null 같은 코드  */
		if (btn.textContent == "Create account") { /* 회원가입 할때 not null 안쓰면 회원가입 안됨 */
			if (txtEmail != "" && ddlEmail != "" && pwd.value != "" && pwdchk.value != ""
					&& username.value != "" && birthday.value != ""
					&& number.value != "") {
				if (pwd.value == pwdchk.value) {
					btn.disabled = false;
					btn.style.backgroundColor = "lightsteelblue";
				}
			} else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		} else { /* 로그인할때 아이디나 패스워드 중에 안쓰면 로그인 버튼못누름 */
			if (txtEmail != "" && ddlEmail != "" && pwd.value != "") {
				btn.disabled = false;
				btn.style.backgroundColor = "lightsteelblue";
			} else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		}
	}

	function login() { /* 회원가입할때 비밀번호가 다르면 alert창에 띄어줌 밖에 없어 */
		/* console.log(backToObj); */
		if (btn.textContent == "Create account") {
			if (email == false) {
				alert('메일을 다시 확인해주세요.');
			} else if (pwd.value.length < 8) {
				alert('비밀번호는 최소 8글자 이상이어야합니다.');
			} else if (pwd.value != pwdchk.value) {
				alert("삐! 비밀번호가 다릅니다. 다시입력해주세요.");
			} else if (birthday.value.replace(/-/gi, '') > getToday) {
				alert('있을 수 없는 생일입니다.');
			} else if (number.value.length != 11) {
				alert('휴대폰번호를 다시 입력해주세요');
			} else {
				var conf = {
					url : '/user',
					method : 'POST',
					param : JSON.stringify({
						userName : username.value,
						userId : id,
						userPwd : pwd.value,
						userBirth : birthday.value,
						userMobile : number.value
					}),
					success : function(res) {
						if (res == "1") {
							alert('가입에 성공하였습니다.');
							location.href = '/uri/book/homePage';
						} else if (res == "2") {
							alert('아이디가 중복되었습니다.');
						} else {
							alert('가입에 실패하였습니다.');
						}
					}
				}
				au.send(conf);
			}
		} else if (btn.textContent == "LOGIN") {
			var conf = {
				url : '/login',
				method : 'POST',
				param : JSON.stringify({
					userId : id,
					userPwd : pwd.value
				}),
				success : function(res) {
					if (res != '') {
						alert('로그인하였습니다.');
						location.href = "/uri/book/homePage";
					} else {
						alert('아이디 혹은 비밀번호가 잘못되었습니다.');
					}
				}
			}
			au.send(conf);
		}
	}

	function sign() {
		if (signup.textContent == "sign up") {
			btn.textContent = "Create account";
			log.textContent = "JOIN";
			joinhidden.style.display = "block";
			signup.textContent = "sign in";
		} else {
			btn.textContent = "Login";
			log.textContent = "LOGIN";
			joinhidden.style.display = "none";
			signup.textContent = "sign up";
		}
	}

	ddlEmailDomain.addEventListener("click", checkEmail);
	txtEmailDomain.addEventListener("keyup", colorCheck);
	ddlEmailDomain.addEventListener("keyup", colorCheck);
	pwd.addEventListener("keyup", colorCheck);
	pwdchk.addEventListener("keyup", colorCheck);
	username.addEventListener("keyup", colorCheck);
	birthday.addEventListener("keyup", colorCheck);
	number.addEventListener("keyup", colorCheck);
	btn.addEventListener("click", login);
	signup.addEventListener("click", sign);
</script>
</html>