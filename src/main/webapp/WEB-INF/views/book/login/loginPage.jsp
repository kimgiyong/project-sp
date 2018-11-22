<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>로그인/회원가입페이지</title>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/loginPage.css" />
</head>
<body>
<% String loge = (String)request.getParameter("loge"); %>

	<div id="container">
	<div id="lodiv"><a href="../homePage"><h1 id="logo">좋은<span id="hyang">향</span> 도서관</h1></a></div>
		<div id="back">
			<h1 id="log">LOGIN</h1>

			<input id="userId" type="text" placeholder="Account Id" /><br>
			<input id="userPwd" type="password" placeholder="password" /><br>
			<input id="userPwdchk" type="hidden" placeholder="retype password" /><br>
			<input id="userName" type="hidden" placeholder="user name" maxlength="5"/><br>
			<input id="userBir" type="hidden" placeholder="Birthday" /><br>
			<input id="userNumber" type="hidden" placeholder="Phone number('-'없이 써주세요)" maxlength="11" onkeypress="onlyNumber();"/><br>

			<button disabled="true" id="loginbtn">LOGIN</button>
			<br> <!-- <a id="forgot" href="forget"> --><span id="forgot">Forgot your <a id="forgetid" href="forgetID">ID</a> or <a id="forgetpwd" href="forgetPwd">Password</a>?</span><!-- </a> --> 
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
	
	var username = document.getElementById("userName");
	var birthday = document.getElementById("userBir");
	var number = document.getElementById("userNumber");
	
	var btn = document.getElementById("loginbtn");
	var signup = document.getElementById("signup");
	var log = document.getElementById("log");	
	var loge = <%=loge%>;
	
	var date = new Date();
	
	var year = date.getFullYear(); //년도
	var month = date.getMonth()+1; //월
	var day = date.getDate(); //일

	if ((day+"").length < 2) {       // 일이 한자리 수인 경우 앞에 0을 붙여주기 위해
	    day = "0" + day;
	}

	var getToday = year+ '' +month+day; // 오늘 날짜 

	
	if(loge==0){
		window.addEventListener("load", function(){
			btn.textContent = "Create account";
			pwdchk.type = "password";
			username.type = "text";
			birthday.type = "date";
			number.type = "text";
			signup.textContent = "sign in";
			log.textContent = "JOIN"
		});
	};/* 여기가 들어갈때 확인해서 join쪽이면 바꿔줌 */
    function onlyNumber(){
        if((event.keyCode<48)||(event.keyCode>57)){
           event.returnValue=false;
        }
	}

	function colorCheck() { /* not null 같은 코드  */
		if (btn.textContent == "Create account") { /* 회원가입 할때 not null 안쓰면 회원가입 안됨 */
			if (id.value != "" && pwd.value != "" && pwdchk.value != "" && username.value != "" && birthday.value != "" && number.value != "") {
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
			}/*  else if(birthday.value < getToday){
				alert("생일을 다시 확인해주세요.")
			} */ else {
				btn.disabled = true;
				btn.style.backgroundColor = "lightslategray";
			}
		}
	}

	function login() { /* 회원가입할때 비밀번호가 다르면 alert창에 띄어줌 밖에 없어 */
		/* console.log(backToObj); */
		if (btn.textContent == "Create account") {
			if(id.value.length < 5){
				alert('아이디는 최소 5글자 이상이어야합니다.');
			}else if(pwd.value.length < 8){
				alert('비밀번호는 최소 8글자 이상이어야합니다.');
			}else if (pwd.value != pwdchk.value) {
				alert("삐! 비밀번호가 다릅니다. 다시입력해주세요.");
			}else if(birthday.value.replace(/-/gi,'') > getToday){
				alert('있을 수 없는 생일입니다.');
			}else if(number.value.length != 11){
				alert('휴대폰번호를 다시 입력해주세요');
			}else {
				var conf = {
					url:'/libuser',
					method:'POST',
					param:JSON.stringify({
						userName:username.value, userId:id.value,
						userPwd:pwd.value, userBirth:birthday.value,
						userMobile:number.value
					}),
					success:function(res){
						if(res=="1"){
							alert('가입에 성공하였습니다.');
							location.href='/uri/book/homePage';
						}else if(res=="2"){
							alert('아이디가 중복되었습니다.');
						}else{
							alert('가입에 실패하였습니다.');
						}
					}
				}
				au.send(conf);
			}
		}else if(btn.textContent == "LOGIN"){
			var conf = {
					url:'/liblogin',
					method:'POST',
					param:JSON.stringify({
						userId:id.value,
						userPwd:pwd.value
					}),
					success:function(res){
						if(res!=''){
							alert('로그인하였습니다.');
							alert('<%=session.getAttribute("user")%>');
							location.href="/uri/book/homePage";
						}else{
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
			pwdchk.type = "password";
			username.type = "text";
			birthday.type = "date";
			number.type = "text";
			signup.textContent = "sign in";
		} else {
			btn.textContent = "Login";
			log.textContent = "LOGIN"
			pwdchk.type = "hidden";
			username.type = "hidden";
			birthday.type = "hidden";
			number.type = "hidden";
			signup.textContent = "sign up";
		}
	}
	
	id.addEventListener("keyup", colorCheck);
	pwd.addEventListener("keyup", colorCheck);
	pwdchk.addEventListener("keyup", colorCheck);
	username.addEventListener("keyup", colorCheck);
	birthday.addEventListener("keyup", colorCheck);
	number.addEventListener("keyup", colorCheck);
	btn.addEventListener("click", login);
	signup.addEventListener("click", sign);
	
</script>
</html>