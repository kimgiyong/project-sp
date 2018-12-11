<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Q & A</title>
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuHead.css" />
	<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/qna.css" />
</head>

<body>
<%@ include file="../home.jsp" %>
<div class="container"> 
	<div id="listHead">
		<span>이용 안내</span> 
		<h3><a id="callback" onclick="go()">홈페이지</a></h3>
	</div>
	<div id="spaceDiv"></div>
	
	<div id="question">
		<table>
			<tr>
				<td>작성자회원이름</td>
				<td>대출이 연체 되서 책을 못빌려요.. </td>
			</tr>
			<tr>
				<td><textarea disabled="disabled"></textarea></td>
			</tr>
			<tr>
				<td>
					<ul id="answerList">
						<li><textarea disabled="disabled">답변내용이 들어갈 자리입니다.</textarea></li>
						<li><textarea disabled="disabled">답변내용이 들어갈 자리입니다.</textarea></li>
					</ul>
				</td>
			</tr>
			<tr>
				<td>
					<textarea id="answerText" placeholder="회원이름님께 답글을 남겨주세요."></textarea>
					<button onclick="sendAnswer()">보내기</button>
				</td>
			</tr>
				
		</table>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
<script>
var answerText = document.getElementById("answerText");
var answerList = document.getElementById("answerList");
function sendAnswer(){
	var newElement = '<textarea disabled="disabled">' + answerText.value + '</textarea>';
	answerList.insertAdjacentHTML("beforebegin",newElement); 
}
</script>
</html>