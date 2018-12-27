<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css"
	href="${rootPath}/resources/css/menuCss/noticeboardCss/noticeList.css" />
</head>

<body>
	<%@ include file="../../home.jsp"%>
	<div class="container">
		<%@ include file="../../menuHead.jsp"%>
		<div id="kindParents">
			<ul id="noticeKind">
				<li><a href="/postCode?postCode=F">자유게시판</a></li>
				<li><a href="/postCode?postCode=H">유머게시판</a></li>
				<li><a href="/postCode?postCode=Q">질문게시판</a></li>
				<li><a href="/uri/book/menu/noticeboard/noticeInsert">게시글작성</a></li>
			</ul>
		</div>
		<table id=notices>
			<thead class="category">
				<tr>
					<th>책코드</th>
					<th>회원명</th>
					<th>질문</th>
				</tr>
			</thead>
			<tbody class="noticeOne">
				<tr class="positionTopic">
					<th class="bookCode">001252</th>
					<th class="member">회원명님</th>
					<th class="summary">회원이 질문의 대략적인 내용을 적어두는 자리입니다.</th>
				</tr>
				<tr class="detail">
					<td colspan="3" class="contentsD"><textarea
							disabled="disabled">db에서 내용 받아 올꺼다</textarea></td>
				</tr>
				<tr class="detail">
					<td colspan="3">
						<div>
							<ul class="answerList style-7"> 
								<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
								<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
								<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
								<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
								<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
								<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
								<li><span class="replier">답변자님</span><span class="credat">20xx-xx-xx</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
							</ul>	
						</div>
						<hr>
						<div class="goReply" onclick="goReply()">
							<a>답글 작성하러 가기</a>
						</div>
					</td>
				</tr>
			</tbody>
			
		</table>
		<div id="page">
			<button id="start" class="pBtn">처음으로</button>
			<button id="leftMoveTen" class="pBtn">◀◀</button>
			<button id="leftMove" class="pBtn">◀</button>
			<c:forEach var="a" begin="${page.startPage}" end="${page.endPage}">
				<c:if test="${a!=page.pageN}">
					<span><a href="/postCode?&pageS=${a}">[${a}]</a></span>
				</c:if>
				<c:if test="${a==page.pageN}">
					<span><a href="/postCode?pageS=${a}" id="nowP">[${a}]</a></span>
				</c:if>
			</c:forEach>
			<button id="rightMove" class="pBtn">▶</button>
			<button id="rightMoveTen" class="pBtn">▶▶</button>
			<button id="ends" class="pBtn">끝으로</button>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="../../footer.jsp"%>
</body>
<script>
	detextname.textContent = "게시판";
	callback.textContent = "홈페이지";
	function getUrlParams() {
		var params = {};
		window.location.search.replace(/[?&]+([^&]*)/gi, function(str, key,
				value) {
			params[key] = value;
		});
		return params;
	}
	$(function() {
		oParams = getUrlParams();
		$('.detail').hide();
		if (oParams.postCode == 'F') {
			$('#noticeKind li').eq(0).css({
				'background' : '#3d2e2d'
			});
		} else if (oParams.postCode == 'H') {
			$('#noticeKind li').eq(1).css({
				'background' : '#3d2e2d'
			});
		} else if (oParams.postCode == 'Q') {
			$('#noticeKind li').eq(2).css({
				'background' : '#3d2e2d'
			});
		}
	})
	$('.positionTopic').on('click', function() {
		$(this).siblings('.detail').toggle();
	})
	function goReply() {
		location.href = "/uri/book/menu/noticeboard/noticeReply?id=1";
	}
</script>
</html>
