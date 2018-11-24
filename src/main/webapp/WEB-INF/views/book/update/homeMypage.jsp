<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>수정 페이지</title>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/mypageCss.css">
</head>
<body>
<%@ include file="../home.jsp"%>
	<div id="mypageBack">
		<h1>개인정보 수정 페이지</h1>
		<table id="mypagetbl">
			<tr class="mypagetr">
				<td>이메일</td>
				<td><input type="email" value=""></td>
			</tr>
			<tr class="mypagetr">
				<td>이름</td>
				<td><input type="text" ></td>
			</tr>
			<tr class="mypagetr">
				<td>비밀번호</td>
				<td><input type="password"></td>
			</tr>
			<tr class="mypagetr">
				<td>비밀번호확인</td>
				<td><input type="password"></td>
			</tr>
			<tr class="mypagetr">
				<td>생년월일</td>
				<td><input type="date"></td>
			</tr>
			<tr class="mypagetr">
				<td>전화번호</td>
				<td><input type="text"></td>
			</tr>
		</table>
		<button>저장</button>
		<button>취소</button>
	</div>
</body>
</html>