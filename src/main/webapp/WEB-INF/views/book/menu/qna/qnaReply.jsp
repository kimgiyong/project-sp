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
	href="${rootPath}/resources/css/menuCss/qna/qnaList.css" />
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
				<tr id="detail">
					<td>
						<div>
							<textarea id="contentsD"></textarea>
						</div>
						<div id="answers">
							<ul id="answerList">
								<!-- db되면 여기에 답글 넣을 것 -->
							</ul>
						</div>
						<div id="reply">
							<textarea id="contentsR"></textarea>
							<button onclick="Reply()">전송</button>
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
		var newElement = '<span>회원이름님</span><textarea disabled="disabled">'
				+ contentsR.value + '</textarea>';
		if (contentsR.value == "" || contentsR.value == null) {
			alert("답글을 작성해 주세요");
			return;
		}
		answerList.insertAdjacentHTML("beforebegin", newElement);
	}
</script>
</html>