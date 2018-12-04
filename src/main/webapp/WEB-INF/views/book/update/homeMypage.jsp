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
	<div id="menu">
		<ul>
			<li class="subMenu">개인정보확인/수정</li>
			<li class="subMenu">내가 쓴 글 보기</li>
			<li class="subMenu">내가 쓴 댓글 보기</li>
			<li class="subMenu">관심 책 보기</li>
		</ul>
	</div>
	<div id="updateBack">
		<h1>개인정보 수정 페이지</h1>
		<table id="updatetbl">
			<tr class="updatetr">
				<td>이메일</td>
				<td><input type="email" value="<%=user.getUserId()%>"></td>
			</tr>
			<tr class="updatetr">
				<td>이름</td>
				<td><input type="text" value="<%=user.getUserName()%>"></td>
			</tr>
			<tr class="updatetr">
				<td>비밀번호</td>
				<td><input type="password" value=""></td>
			</tr>
			<tr class="updatetr">
				<td>비밀번호확인</td>
				<td><input type="password" value=""></td>
			</tr>
			<tr class="updatetr">
				<td>생년월일</td>
				<td><input type="date" value="<%=user.getUserBirth()%>"></td>
			</tr>
			<tr class="updatetr">
				<td>전화번호</td>
				<td><input type="text" value="<%=user.getUserMobile()%>"></td>
			</tr>
		</table>
		<button>저장</button>
		<button>취소</button>
	</div>
</body>
<script>

</script>
</html>