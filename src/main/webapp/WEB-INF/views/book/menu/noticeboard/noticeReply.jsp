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
	href="${rootPath}/resources/css/menuCss/noticeboardCss/noticeReply.css" />
</head>
<body>
	<%@ include file="../../home.jsp"%>
	<div class="container">	
	<%@ include file="../../menuHead.jsp"%>
		<table id="notices">
			<thead class="category">
				<tr>
					<th>회원명</th>
					<th>질문</th>
				</tr>
			</thead>
			<tbody class="notice">
				<tr>
					<th class="member">회원명님</th>
					<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
				</tr>
				<tr class="contentsD">
					<td colspan="2"><textarea disabled="disabled"></textarea></td>
				</tr>
				<tr id="detail">
					<td colspan="2">
						<div id="answers">
							<div id="answerList">
								<!-- 답글이 올라오는 곳 -->
							</div>
						</div>
						<div id="reply">
							<textarea id="contentsR" placeholder="답변을 작성해 주십시오."></textarea>
							<button id="sendRbtn" onclick="Reply()">전송</button>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
<script>
	detextname.textContent = "게시물 등록";
	callback.textContent = "돌아가기";
	var contentsR = document.getElementById("contentsR");
	var answerList = document.getElementById("answerList");
	function Reply() {
		var newElement = '<div><span class="replier">' + '답변자님' + '</span><span class="credat">' + '20xx-xx-xx' + '</span><br>'
			+ '<textarea class="contentR" disabled="disabled">' + contentsR.value + '</textarea>'; 
		if (contentsR.value == "" || contentsR.value == null) {
			alert("답글을 작성해 주세요");
			return;
		}
		answerList.insertAdjacentHTML("beforeend", newElement);
		$('#answers').scrollTop($('#answers').prop('scrollHeight'));
	}
</script>
</html>