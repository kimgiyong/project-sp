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
	href="${rootPath}/resources/css/menuCss/qna/qnaReply.css" />
</head>
<body> 
	<%@ include file="../../home.jsp"%>
	<div class="container">
		<div id="listHead">
			<span>이용 안내</span>
			<h3>
				<a id="callback" onclick="go()">홈페이지</a>
			</h3>
		</div>
		<div id="spaceDiv"></div>
		<table id="questions">
		<thead class="category">
			<tr>
				<th>회원명</th>
				<th>질문</th>
			</tr>
		</thead>
		<tbody class="question">
			<tr>
				<th class="member">회원명님</th>
				<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
			</tr>
			<tr class="contentsD"> 	
				<td colspan="2">
				<div>상세내용</div> 
				<textarea disabled="disabled"></textarea></td>
			</tr>
			<tr id="detail"> 
				<td colspan="2"> 
					<div id="answers">
						<div id="answerList">
							<!-- 답글이 올라오는 곳 -->
						</div>
					</div>
					<hr>
					<div id="reply">
						<textarea id="contentsR"></textarea>
						<button id="sendRbtn" onclick="Reply()">전송</button>
					</div>
				</td>
			</tr>
		</tbody>
	</table>
	</div>
</body>
<script>
	var contentsR = document.getElementById("contentsR");
	var answerList = document.getElementById("answerList");
	function Reply() {
		var newElement = '<div><span class="replier">'+ '회원이름님' 
				+ '</span><br><textarea class="contentsR">'
				+ contentsR.value + '</textarea></div>';
		if (contentsR.value == "" || contentsR.value == null) {
			alert("답글을 작성해 주세요");
			return;
		}
		answerList.insertAdjacentHTML("beforeend", newElement);
		$('#answers').scrollTop($('#answers').prop('scrollHeight'));
	}
</script>
</html>