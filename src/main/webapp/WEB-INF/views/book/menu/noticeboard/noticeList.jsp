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
	href="${rootPath}/resources/css/menuCss/noticeboardCss/noticeList.css" />
</head>

<body>
<%@ include file="../../home.jsp" %>
<div class="container"> 
	<div id="listHead">
		<span>게시판</span> 
		<h3><a id="callback" onclick="go()">홈페이지</a></h3>
	</div>
	<div id="spaceDiv"></div>
	
	<table id=notices>
		<thead class="category">
			<tr>
				<th>회원명</th>
				<th>질문</th>
			</tr>
		</thead>
		<tbody class="noticeOne">
			<tr class="positionTopic">
				<th class="member">회원명님</th>
				<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
			</tr>
			<tr class="detail">
				<td colspan="2" class="contentsD"><textarea disabled="disabled">db에서 내용 받아 올꺼다</textarea></td>
			</tr>
			<tr class="detail"> 
				<td colspan="2"> 
					<div>
						<ul class="answerList">
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
						</ul>
					</div>
					<hr>
					<div class="goReply" onclick="goReply()"><a>답글 작성하러 가기</a></div>
				</td>
			</tr>
		</tbody>
		<tbody class="noticeOne">
			<tr class="positionTopic">
				<th class="member">회원명님</th>
				<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
			</tr>
			<tr class="detail">
				<td colspan="2" class="contentsD"><textarea disabled="disabled">db에서 내용 받아 올꺼다</textarea></td>
			</tr>
			<tr class="detail"> 
				<td colspan="2"> 
					<div>
						<ul class="answerList">
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
							<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
							<textarea class="contentsR" placeholder="답변자님의 답변입니다."></textarea></li>
						</ul>
					</div>
					<hr>
					<div class="goReply"><a href="/uri/book/menu/noticeboard/noticeReply?id=1">답글 작성하러 가기</a></div>
				</td>
			</tr>
		</tbody>
	</table>
</div>
<%@ include file="../../footer.jsp" %>
</body>
<script>
$(function(){
	$('.detail').hide();
})
	$('.answerList').scrollTop($('.answerList').prop('scrollHeight'));
$('.positionTopic').on('click',function(){
		$(this).siblings('.detail').toggle(); 
})
function goReply(){
	location.href="/uri/book/menu/noticeboard/noticeReply?id=1";
}
</script>
</html>
