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
	
	<div id="questions">
		<table>
			<tbody class="question">
				<tr>
					<td>작성자회원이름</td>
					<td>대출이 연체 되서 책을 못빌려요..</td>
				</tr>
				<tr>
					<td>작성자회원이름</td>
					<td><textarea disabled="disabled"></textarea></td>
				</tr>
				<tr>
					<td>
						<ul id="answerList">
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea id="answerText" placeholder="회원이름님께 답글을 남겨주세요."></textarea>
						<button onclick="sendAnswer()">보내기</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
<script>
var answerText = document.getElementById("answerText");
var answerList = document.getElementById("answerList");
function sendAnswer(){
	var newElement = '<span>회원이름님</span><textarea disabled="disabled">' + answerText.value + '</textarea>';
	if(answerText.value==""||answerText.value==null){
		alert("답글을 작성해 주세요");
		return;
	} 
	answerList.insertAdjacentHTML("beforebegin",newElement); 
}
</script>
</html>