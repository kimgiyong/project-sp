<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Q & A</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/qnaCss/qnaList.css" />
</head>

<body>
	<%@ include file="../../home.jsp"%>
	<div class="container">
		<%@ include file="../../menuHead.jsp"%>
		<table id="notices">
			<thead class="category">
				<tr>
					<th>회원명</th>
					<th colspan="2">질문</th>
				</tr>
			</thead>
			<tbody class="qnaBox">
				<tr class="positionTopic">
					<th class="member">회원명님</th>
					<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
					<th class="goBtn"><button onclick="goReplyPage()">답글달기</button></th>
				</tr>
				<tr class="detail">
					<th colspan="3" class="contentD"><textarea disabled="disabled"></textarea></th>
				</tr>
			</tbody>
			<tbody class="qnaBox">
				<tr class="positionTopic">
					<th class="member">회원명님</th>
					<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
					<th class="goBtn"><button onclick="goReplyPage()">답글달기</button></th>
				</tr>
				<tr class="detail">
					<th colspan="3" class="contentD"><textarea disabled="disabled"></textarea></th>
				</tr>
			</tbody>
			<tbody class="qnaBox">
				<tr class="positionTopic">
					<th class="member">회원명님</th>
					<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
					<th class="goBtn"><button onclick="goReplyPage()">답글달기</button></th>
				</tr>
				<tr class="detail">
					<th colspan="3" class="contentD"><textarea disabled="disabled"></textarea></th>
				</tr>
			</tbody>
		</table>
	</div>
<%@ include file="../../footer.jsp" %>
</body>
<script>
	detextname.textContent = "Q & A";
	callback.textContent = "홈페이지";
	callback.addEventListener("click", gohome);
	$(function(){
		$('.detail').hide();
	})
	$('.summary').on('click',function(){
		$(this).parents().siblings('tr').toggle();
	})
</script>
</html>