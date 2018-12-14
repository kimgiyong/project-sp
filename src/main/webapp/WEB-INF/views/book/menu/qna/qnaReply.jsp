<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>답글달기</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/qnaCss/qnaReply.css" />
</head>
<body>
<%@ include file="../../home.jsp"%>
	<div class="container">
		<%@ include file="../../menuHead.jsp"%>
		<table id="notices">
			<thead>
				<tr class="positionTopic">
					<th class="member">회원명님</th>
					<th colspan="2" class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
				</tr>
			</thead>
			<tbody>
				<tr class="detail">
					<th colspan="3" class="contentD"><textarea disabled="disabled"></textarea></th>
				</tr>
				<tr class="detail">
					<th colspan="3" class="reply"><textarea  placeholder="답변을 작성해 주세요"></textarea>
					<button onclick="insertReply()" id="insertBtn">답글달기</button></th>
				</tr>
			</tbody>
		</table>
	</div>
	
<%@ include file="../../footer.jsp" %>
</body>
<script>
	$(function(){
		detextname.textContent = "답글";
		if(<%=user.getUserLevel()%>==1){
			alert("답글은 사서레벨의 사용자만 이용하실수 있습니다.");
			history.back();
		}
	})
	function insertReply(){
		alert("기용이가 db를 만들 때까지 기다려 주세요 (꾸벅)");
		history.back();
	}
</script>
</html>