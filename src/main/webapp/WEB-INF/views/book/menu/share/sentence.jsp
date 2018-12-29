<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>책속의 한 문장</title>
<link href="https://fonts.googleapis.com/css?family=Gugi|Poor+Story"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/menuCss/shareCss/sentence.css" />
</head>
<body>
	<%@ include file="../../home.jsp"%>
	<div class="container">
		<%@ include file="../../menuHead.jsp"%>
		<p class="oneinfo">
			내가 읽은 책중 마음속에 남는 <span class="oneinfoline">한 문장</span> 나눔의 광장
		</p>
		<table id=notices>
			<thead class="category">
				<tr>
					<th>회원명</th>
					<th>책 제목</th>
					<th>내용</th>
				</tr>
			</thead>
			<tbody class="noticeOne">
				<tr class="positionTopic">
					<th class="bookCode">은향님</th>
					<th class="member">강아지 똥</th>
					<th class="summary">세상에 쓸모없는 존재는 없다.</th>
				</tr>
				<tr class="detail">
					<td colspan="3">
						<div id="answers">
							<div id="answerList">
								<ul class="answerList">
									<li><span class="replier">은향님</span><span class="credat">2018-12-29</span><br>
										<textarea class="contentsR" disabled="disabled"></textarea></li>
								</ul>
							</div>
						</div>
						<hr>
						<div id="reply">
							<textarea id="contentsR" placeholder="댓글을 작성해 주십시오."></textarea>
							<button id="sendRbtn" onclick="Reply()">전송</button>
						</div>
					</td>
				</tr>
			</tbody>
			<tbody class="noticeOne">
				<tr class="positionTopic">
					<th class="bookCode">은향님</th>
					<th class="member">강아지 똥</th>
					<th class="summary">세상에 쓸모없는 존재는 없다.</th>
				</tr>
				<tr class="detail">
					<td colspan="3">
						<div>
							<ul class="answerList style-7">
								<li><span class="replier">은향님</span><span class="credat">2018-12-29</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
							</ul>
						</div>
						<hr>
						<div id="reply">
							<textarea id="contentsR" placeholder="댓글을 작성해 주십시오."></textarea>
							<button id="sendRbtn" onclick="Reply()">전송</button>
						</div>
					</td>
				</tr>
			</tbody>
			<tbody class="noticeOne">
				<tr class="positionTopic">
					<th class="bookCode">은향님</th>
					<th class="member">강아지 똥</th>
					<th class="summary">세상에 쓸모없는 존재는 없다.</th>
				</tr>
				<tr class="detail">
					<td colspan="3">
						<div>
							<ul class="answerList style-7">
								<li><span class="replier">은향님</span><span class="credat">2018-12-29</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
							</ul>
						</div>
						<hr>
						<div id="reply">
							<textarea id="contentsR" placeholder="답변을 작성해 주십시오."></textarea>
							<button id="sendRbtn" onclick="Reply()">전송</button>
						</div>
					</td>
				</tr>
			</tbody>
			<tbody class="noticeOne">
				<tr class="positionTopic">
					<th class="bookCode">은향님</th>
					<th class="member">강아지 똥</th>
					<th class="summary">세상에 쓸모없는 존재는 없다.</th>
				</tr>
				<tr class="detail">
					<td colspan="3">
						<div>
							<ul class="answerList style-7">
								<li><span class="replier">은향님</span><span class="credat">2018-12-29</span><br>
									<textarea class="contentsR" disabled="disabled"></textarea></li>
							</ul>
						</div>
						<hr>
						<div id="reply">
							<textarea id="contentsR" placeholder="답변을 작성해 주십시오."></textarea>
							<button id="sendRbtn" onclick="Reply()">전송</button>
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
					<span><a href="/postCode?&pageS=${a}" class="pBtn2">[${a}]</a></span>
				</c:if>
				<c:if test="${a==page.pageN}">
					<span><a href="/postCode?pageS=${a}" id="nowP" class="pBtn2">[${a}]</a></span>
				</c:if>
			</c:forEach>
			<button id="rightMove" class="pBtn">▶</button>
			<button id="rightMoveTen" class="pBtn">▶▶</button>
			<button id="ends" class="pBtn">끝으로</button>
		</div>
		<div class="clear"></div>
	</div>
	<%@ include file="../../footer.jsp"%>
	<script>
		detextname.textContent = "책 속의 한 문장";
		callback.textContent = "홈페이지";
		callback.addEventListener("click", gohome);
	</script>
	<script>
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
		var contentsR = document.getElementById("contentsR");
		var answerList = document.getElementById("answerList");
		function Reply() {
			var newElement = '<div><span class="replier">' + '답변자님'
					+ '</span><span class="credat">' + '20xx-xx-xx'
					+ '</span><br>'
					+ '<textarea class="contentR" disabled="disabled">'
					+ contentsR.value + '</textarea>';
			if (contentsR.value == "" || contentsR.value == null) {
				alert("댓글을 작성해 주세요");
				return;
			}
			answerList.insertAdjacentHTML("beforeend", newElement);
			$('#answers').scrollTop($('#answers').prop('scrollHeight'));
		}
	</script>
</body>
</html>