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
<title>스프링테스트</title>
</head>

<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="back">
				<div class="w3-center w3-large w3-margin-top">
					<h3>비밀번호 변경</h3>
				</div>
				<div>
					<p>
						<label>새 비밀번호</label> <input class="w3-input" type="password"
							id="userPwd" name="userPwd" required>
					</p>
					<p>
						<label>비밀번호 확인</label> <input class="w3-input" type="password"
							id="userPwdCh" name="userPwdCh" required>
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
</body>
</html>