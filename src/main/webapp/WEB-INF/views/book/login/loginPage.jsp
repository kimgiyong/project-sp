<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>로그인/회원가입페이지</title> 
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/loginCss/loginPage.css" />
<link
	href="https://fonts.googleapis.com/css?family=Black+And+White+Picture|Dokdo|East+Sea+Dokdo|Gamja+Flower|Gugi|Nanum+Pen+Script"
	rel="stylesheet">
</head>
<body>
	<%
		String loge = (String) request.getParameter("loge");
	%>

	<div id="container">
		<div id="lodiv">
			<a href="../homePage">
				<h1 id="logo">
					좋은<span id="hyang">향</span> 도서관
				</h1>
			</a>
		</div>
		<div id="back">
			<h1 id="log">LOGIN</h1>
			<div id="sum">
				<!-- <input id="userId" type="email" placeholder="Account Email" />  -->
				<label>&nbsp; 이 메 일 </label>
				<div class="input1">
					<input name="txtEmailId" type="text" value="" maxlength="35"
						id="txtEmailId" class="txt"
						onkeydown="if(event.keyCode==13){return false;}"
						placeholder="Account Email">
				</div>
				<div class="at">@</div>
				<div class="input1">
					<input type="text" value="" readonly maxlength="30"
						id="txtEmailDomain" class="txt"
						onkeydown="if(event.keyCode==13){return false;}">
				</div>
				<select name="ddlEmailDomain" id="ddlEmailDomain">
					<option selected="selected" value="">선택</option>
					<option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					<option value="daum.net">daum.net</option>
					<option value="nate.com">nate.com</option>
					<option value="gmail.com">gmail.com</option>
					<option value="hotmail.com">hotmail.com</option>
					<option value="direct_input">직접입력</option>
				</select> <br> <label>패 스 워 드 </label><input id="userPwd"
					type="password" placeholder="password" onkeydown='enterkey()' /><br>
				<div id="joinhidden">
					<hr>
					<label id="pwcheck">패스워드 확인</label><input id="userPwdchk"
						type="password" placeholder="retype password" /><br> <label>&nbsp;
						&nbsp; &nbsp; &nbsp;이 름 </label><input id="userName" type="text"
						placeholder="user name" maxlength="5" /><br> <label>생
						년 월 일 </label><input id="userBir" type="date" placeholder="Birthday" /><br>
					<!-- <input id="userNumber" type="text" placeholder="Phone number('-'없이 써주세요)" maxlength="11" onkeypress="onlyNumber();" /><br> -->
					<div id="userMobile">
						<label>전 화 번 호 </label> <select name="ddlMobileTel"
							id="ddlMobileTel">
							<option selected="selected" value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						<div class="var">-</div>
						<div class="input2">
							<input name="txtMobileTel2" type="text" value="" maxlength="4"
								id="txtMobileTel2" class="txt"
								onkeydown="if(event.keyCode==13){return false;}">
						</div>
						<div class="var">-</div>
						<div class="input2">
							<input name="txtMobileTel3" type="text" value="" maxlength="4"
								id="txtMobileTel3" class="txt"
								onkeydown="if(event.keyCode==13){return false;}">
						</div>
					</div>
					<a href="/uri/book/login/privacyPage?privacy=0" class="terms">서비스
						이용약관</a>에 동의합니다. <input type="checkbox" value="agree"
						id="serviceTerms" class="termsCkbox"><br> <a
						href="/uri/book/login/privacyPage?privacy=1" class="terms">개인정보
						수집 및 이용</a>에 관한 안내 약관에 동의합니다. <input type="checkbox" value="agree"
						id="collectionTerms" class="termsCkbox"><br> <a
						href="/uri/book/login/privacyPage?privacy=2" class="terms">개인정보
						처리 및 위탁</a>에 관한 안내 약관에 동의합니다. <input type="checkbox" value="agree"
						id="processTerms" class="termsCkbox"><br>
					<p>
						모두동의<input type="checkbox" value="agree" id="allagree"
							class="termsCkbox">
					</p>
					<br>
				</div>
			</div>
			<button disabled="true" id="loginbtn">LOGIN</button>
			<br> <span id="forgot">Forgot your <a id="forgetid"
				href="forgetID">ID</a> or <a id="forgetpwd" href="forgetPwd">Password</a>?
			</span>
			<!-- </a> -->
			<span id="zz">/</span>
			<button id="signup">sign up</button>
		</div>
		<p id="foo">A good incense ⓒ UDP Technology</p>
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
	/* Email */
	var txtEmailId = document.getElementById("txtEmailId");
	var txtEamilDoamin = document.getElementById("txtEmailDomain");
	var ddlEmailDomain = document.getElementById("ddlEmailDomain");

	/* Mobile */
	var ddlMobileTel = document.getElementById("ddlMobileTel");
	var txtMobileTel2 = document.getElementById('txtMobileTel2');
	var txtMobileTel3 = document.getElementById('txtMobileTel3');

	/* Check */
	var serviceTerms = document.getElementById("serviceTerms");
	var collectionTerms = document.getElementById("collectionTerms");
	var processTerms = document.getElementById("processTerms");

	/* 약정 */
	var allagree = document.getElementById("allagree");

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

	var checkmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var privacy;
	/*var emailjuso = document.getElementById("emailjuso");
	var index = $("#emailjuso option").index($("#emailjuso option:selected")); */

	if (loge == 0) {
		window.addEventListener("load", function() {
			btn.textContent = "Create account";
			pwdchk.type = "password";
			joinhidden.style.display = "block";
			signup.textContent = "sign in";
			log.textContent = "JOIN";
		});
	};/* 여기가 들어갈때 확인해서 join쪽이면 바꿔줌 */

	function onlyNumber() { /* 숫자만 들어가 있는지 체크 */
		if ((event.keyCode < 48) || (event.keyCode > 57)) {
			event.returnValue = false;
		}
	}

	/* 엔터치면 로그인 */
	
	function enterkey() {
		if (window.event.keyCode == 13) {

			// 엔터키가 눌렸을 때 실행할 내용
			login();
		}
	}

	function checkEmail() {
		if (ddlEmailDomain.value == "direct_input") {
			txtEmailDomain.readOnly = false;
			txtEmailDomain.value = '';
		} else {
			txtEmailDomain.readOnly = true;
			txtEmailDomain.value = ddlEmailDomain.value;
		}
	}

	function privacy() {
		var termsCkbox = document.getElementsByClassName('termsCkbox');
		if (allagree.checked != false) {
			for (i = 0; i < 3; i++) {
				termsCkbox[i].checked = true;
			}
		} else {
			for (i = 0; i < 3; i++) {
				termsCkbox[i].checked = false;
			}
		}
	}
	allagree.addEventListener("click", privacy);

	function colorCheck() { /* not null 같은 코드  */
		if (serviceTerms.checked == true && collectionTerms.checked == true
				&& processTerms.checked == true) {
			allagree.checked = true;
		} else {
			allagree.checked = false;
		}
		if (btn.textContent == "Create account") { /* 회원가입 할때 not null 안쓰면 회원가입 안됨 */
			if (txtEmailId.value != '' && txtEmailDomain.value != ""
					&& ddlEmailDomain.value != "" && pwd.value != ""
					&& pwdchk.value != "" && username.value != ""
					&& birthday.value != "" && txtMobileTel2.value != ""
					&& txtMobileTel3.value != "" && allagree.checked == true) {
				if (pwd.value == pwdchk.value) {
					btn.disabled = false;
					btn.style.backgroundColor = "lightsteelblue";
				}
			} else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		} else { /* 로그인할때 아이디나 패스워드 중에 안쓰면 로그인 버튼못누름 */
			if (txtEmailId.value != '' && txtEmailDomain.value != ""
					&& ddlEmailDomain.value != "" && pwd.value != "") {
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
		var number = ddlMobileTel.value + txtMobileTel2.value
				+ txtMobileTel3.value;
		var id = txtEmailId.value + '@' + ddlEmailDomain.value;
		var email = checkmail.test(id);
		if (btn.textContent == "Create account") {
			if (email == false) {
				alert('메일을 다시 확인해주세요.');
			} else if (pwd.value.length < 8) {
				alert('비밀번호는 최소 8글자 이상이어야합니다.');
			} else if (pwd.value != pwdchk.value) {
				alert("삐! 비밀번호가 다릅니다. 다시입력해주세요.");
			} else if (birthday.value.replace(/-/gi, '') > getToday) {
				alert('있을 수 없는 생일입니다.');
			} else if (number.length != 11) {
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
						userMobile : number
					}),
					success : function(res) {
						if (res == "1") {
							alert('가입에 성공하였습니다.');
							location.href = '/uri/book/login/loginPage?loge=1';
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
			var id = txtEmailId.value + '@' + txtEmailDomain.value;
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
						location.href=document.referrer;
					} else {
						alert('아이디 혹은 비밀번호가 잘못되었습니다.');
					}
				}
			}
			au.send(conf);
		}
	}

	function sign() {
		logeChange();
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

	function logeChange() {
		if (signup.textContent == "sign up") {
			location.href = "loginPage?loge=0";
		} else {
			location.href = "loginPage?loge=1";
		}

	}

	ddlEmailDomain.addEventListener("click", checkEmail);
	txtEmailDomain.addEventListener("keyup", colorCheck);
	ddlEmailDomain.addEventListener("keyup", colorCheck);
	pwd.addEventListener("keyup", colorCheck);
	pwdchk.addEventListener("keyup", colorCheck);
	username.addEventListener("keyup", colorCheck);
	birthday.addEventListener("keyup", colorCheck);
	ddlMobileTel.addEventListener("keyup", colorCheck);
	txtMobileTel2.addEventListener("keyup", colorCheck);
	txtMobileTel3.addEventListener("keyup", colorCheck);
	serviceTerms.addEventListener("click", colorCheck);
	collectionTerms.addEventListener("click", colorCheck);
	processTerms.addEventListener("click", colorCheck);
	allagree.addEventListener("click", colorCheck);
	btn.addEventListener("click", login);
	signup.addEventListener("click", sign);
</script>
</html>