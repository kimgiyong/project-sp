<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- https://m.blog.naver.com/PostView.nhn?blogId=heartflow89&logNo=221114309890&proxyReferer=https%3A%2F%2Fwww.google.co.kr%2F -->
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>스프링테스트</title>
</head>
<body>
	<!-- <div id="bodymodo">
		<div id="idfind">
			<h2 id="idf">ID찾기</h2>
			<form>
				<label>이름 : </label><input type="text" name="idf"> <br>
				<label>생년월일 : </label><input type="date" name="idf">
			</form>
		</div>
		<div id="pwdfind">
			<h2 id="pwdf">Password찾기</h2>
			<form>
				<label>ID : </label><input type="text" name="pwdf"> <br>
				<label>생년월일 : </label><input type="date" name="idf">
			</form>
		</div>
		<button id="backbtn" onclick="history.go(-1);">BACK</button>
	</div> -->


	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<form action="/find_id" method="post">
				<div class="w3-center w3-large w3-margin-top">
					<h3>아이디 찾기</h3>
				</div>
				<div>
					<p>
						<label>Name(이름)</label>
						<input class="w3-input" type="text" id="username" name="username" required>
					</p>
					<p>
					<label>Mobile(휴대폰번호)</label> <input class="w3-input" type="text" id="findMobile"
						name="findMobile" required>
					</p>
					<p class="w3-center">
						<button type="submit" id=findBtn class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">find</button>
						<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
					</p>
				</div>
			</form>
		</div>
	</div>
</body>

<script>
	
</script>
</html>






