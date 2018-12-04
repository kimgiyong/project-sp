<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/loginCss/findCss.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>비밀번호 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="back">
				<div class="w3-center w3-large w3-margin-top">
					<h3>비밀번호 찾기</h3>
				</div>
				<div>
					<p>
						<label>Email(이메일)</label> <input class="w3-input" type="text"
							id="userEmail" name="userEmail" required>
					</p>
					<p>
						<label>Name(이름)</label> <input class="w3-input" type="text"
							id="username" name="username" required>
					</p>
					<p>
						<label>Mobile(휴대폰번호)</label> <input class="w3-input" type="text"
							id="findMobile" name="findMobile" required>
					</p>
					<p>
						<label>Birthday(생일)</label> <input class="w3-input" type="date"
							id="findBir" name="findBir" required>
					</p>
					<p class="w3-center">
						<button type="button" id=findBtn
							class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">find</button>
						<button type="button" onclick="history.go(-1);"
							class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
					</p>
				</div>
			</div>
		</div>
	</div>
<script>
	var fbtn = document.querySelector('#findBtn');
	function find(){
		var userId = document.querySelector('#userEmail');
		var username = document.querySelector('#username');
		var userMobile = document.querySelector('#findMobile');
		var userBirth = document.querySelector('#findBir');
		var conf = {
				url:'/searchPwd',
				method:'POST',
				param:JSON.stringify({
					userId:userId.value, userName:username.value,
					userMobile:userMobile.value, userBirth:userBirth.value
				}),
				success:function(res){
					if(res=='fail'){
						alert('일치하는 정보가 없습니다.');
					}else{
						var popup = window.open('../popup/pwdKeyPop', 'child01', 'top=150px, left=700px, height=330px, width=520px');
						if(popup == null){
							alert('팝업이 차단되었습니다. 차단을 풀어주시길바랍니다.');
						}else{
							alert(res);
							var key = res;
							popup.document.querySelector('#keyValue').value = key;
						}
					}
				}
				
		}
		au.send(conf);
	}
	
	fbtn.addEventListener('click',find);
</script>
</body>
</html>