<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>개인정보</title>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/mypageCss.css">
</head>
<body>
<%@ include file="../home.jsp"%>
	<section id="mytotal">
		<div id="menu">
		<h1 id="fh">개인정보 수정 페이지</h1>
			<ul id="menuul">
				<li class="sub"><a href="#">개인정보확인 / 수정</a></li>
				<li class="sub"><a href="#">내가 쓴 글 보기</a></li>
				<li class="sub"><a href="#">내가 쓴 댓글 보기</a></li>
				<li class="sub"><a href="#">관심 책 보기</a></li>
			</ul>
		</div>
		<div id="updateBack">
			<h1 id="sh">개인정보 수정 페이지</h1>
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
					<td>현재 비밀번호</td>
					<td><input type="password" value=""></td>
				</tr>
				<tr class="updatetr">
					<td>바꿀 비밀번호</td>
					<td><input type="password" value=""><br><label> * 비밀번호는 8자리 이상입니다.</label></td>
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
					<td><input type="text" value="<%=user.getUserMobile()%>"><br><label> * 전화번호는 '-' 를 빼고 써주시기 바랍니다.</label></td>
				</tr>
			</table>
			<div class="clear"></div>
			<div id="btn">
				<button id="save">저장</button>
				<button id="cancel">취소</button>
			</div>
			<div class="clear"></div>
			<img src="${resPath}/img/mypage.jpg" alt="img" id="img">
		</div>
	</section>
</body>
</html>