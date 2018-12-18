<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>개인정보</title>
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/update/mypageCss.css">
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/update/mypageCss2.css">
<%
	String dif = (String) request.getParameter("dif");
%>
</head>

<body>
	<%@ include file="../home.jsp"%>
	<script>var userAddr = '<%=user.getUserAddr()%>';</script>
	<div id="total">
		<%@ include file="leftmenu.jsp"%>
		<section id="dif0" class="total">
			<div class="updateBack">
				<h1 id="sh">개인정보확인 / 수정</h1>
				<table id="updatetbl">
					<tr class="updatetr">
						<td>현재 나의 마일리지</td>
						<td><input type="text" value="<%=user.getUserScore()%>"
							disabled="disabled"></td>
					</tr>
					<tr class="updatetr">
						<td>이 메 일</td>
						<td><input type="email" value="<%=user.getUserId()%>"
							disabled="disabled"></td>
					</tr>
					<tr class="updatetr">
						<td>이 름</td>
						<td><input type="text" value="<%=user.getUserName()%>"
							disabled="disabled"></td>
					</tr>
					<tr class="updatetr">
						<td>현재 비밀번호</td>
						<td><input id="pwd" type="password" value=""></td>
					</tr>
					<tr class="updatetr">
						<td>비밀번호 재설정</td>
						<td><input id="newPwd" type="password" value=""><br>
							<label> * 비밀번호는 8자리 이상입니다.</label></td>
					</tr>
					<tr class="updatetr">
						<td>비밀번호확인</td>
						<td><input id="newPwdCh" type="password" value=""></td>
					</tr>
					<tr class="updatetr">
						<td>생 년 월 일</td>
						<td><input type="date" value="<%=user.getUserBirth()%>"
							disabled="disabled"></td>
					</tr>
					<tr class="updatetr">
						<td>전 화 번 호</td>
						<td><input id="mobile" type="text"
							value="<%=user.getUserMobile()%>"><br> <label>
								* 전화번호는 '-' 를 빼고 써주시기 바랍니다.</label></td>
					</tr>
					<tr class="updatetr">
						<td>주 소</td>
						<td><%@ include file="jusoapi.jsp"%>
						</td>
					</tr>
				</table>
				<div class="clear"></div>
				<div id="btn">
					<button id="save">수정</button>
					<button id="cancel">취소</button>
					<button id="joinout">회원탈퇴</button>
				</div>
				<div class="clear"></div>
				<a href="https://www.privacy.go.kr/" target="_blank"> <img
					src="${resPath}/img/mypage.jpg" alt="img" id="img"></a>
			</div>
		</section>
		<section id="dif1" class="total">
			<div class="updateBack">
				<table id=notices>
					<thead class="category">
						<tr>
							<th>제목</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody class="noticeOne">
						<tr class="positionTopic">
							<th class="member">회원명님</th>
							<th class="summary">회원</th>
						</tr>
					</tbody>
				</table>
			</div>
		</section>
		<section id="dif2" class="total">
			<div class="updateBack">아직은</div>
		</section>
		<section id="dif3" class="total">
			<div class="updateBack">미완성입니다.</div>
		</section>
		<section id="dif4" class="total">
			<div class="updateBack">왜 나올까요</div>
		</section>
	</div>

	<script>
	var total = document.getElementsByClassName("total");
	var dif0 = document.getElementById("dif0");
	var dif1 = document.getElementById("dif1");
	var dif2 = document.getElementById("dif2");
	var dif3 = document.getElementById("dif3");
	var dif4 = document.getElementById("dif4");
	var dif = <%=dif%>;
	function doin(){
		if(dif==4){
			dif4.style.display = "block";
		}else if(dif==3){
			dif3.style.display = "block";
		}else if(dif==2){
			dif2.style.display = "block";
		}else if(dif==1){
			dif1.style.display = "block";
			var conf = {
					
			}
		}else{
			dif0.style.display = "block";
		}
	}
	window.addEventListener('load',doin);
	var save = document.querySelector('#save');
	var cancel = document.querySelector('#cancel');
	var joinout = document.querySelector('#joinout');
	function saves(){
		var pwd = document.querySelector('#pwd');
		if(pwd.value=='<%=user.getUserPwd()%>'){
			var addr = '--';
			if(postcode.value!=''&&address.value!='');{
				addr = postcode.value + "-" + address.value + "-" + address2.value;
			}
			var newPwd = document.querySelector('#newPwd').value;
			var mobile = document.querySelector('#mobile').value;
			if(newPwd == null || newPwd == ''){
				var conf = {
						url:'/user',
						method:'PUT',
						param:JSON.stringify({
							userNum:<%=user.getUserNum()%>, userName:'<%=user.getUserName()%>',
							userId:'<%=user.getUserId()%>', userPwd:pwd.value, userBirth:'<%=user.getUserBirth()%>',
							userMobile:mobile, userAddr:addr, userScore:<%=user.getUserScore()%>, userLevel:<%=user.getUserLevel()%>
						}),
						success:function(res){
							if(res==1){
								alert('수정이 완료되었습니다.');
								location.href="/uri/book/update/homeMypage?dif=0";
							}else{
								alert('수정에 실패하였습니다.');
							}
						}
				}
				au.send(conf);
			}else{
				var newPwdCh = document.querySelector('#newPwdCh').value;
				if(newPwd != newPwdCh){
					alert('바꿀비밀번호가 일치하지 않습니다. 다시 입력해 주십시오');
				}else{
					var conf = {
							url:'/user',
							method:'PUT',
							param:JSON.stringify({
								userNum:<%=user.getUserNum()%>, userName:'<%=user.getUserName()%>',
								userId:'<%=user.getUserId()%>', userPwd:newPwd, userBirth:'<%=user.getUserBirth()%>',
								userMobile:mobile, userAddr:addr, userScore:<%=user.getUserScore()%>, userLevel:<%=user.getUserLevel()%>
							}),
							success:function(res){
								if(res==1){
									alert('수정이 완료되었습니다.');
									location.href="/uri/book/update/homeMypage?dif=0";
								}else{
									alert('수정에 실패하였습니다.');
								}
							}
					}
					au.send(conf);
				}
			}
		}else{
			alert('기존 비밀번호가 틀렸습니다. 다시 입력해주세요');
		}
	}
	function back(){
		location.href='/uri/book/homePage';
	}
	function out(){
		if(confirm("정말 탈퇴하시겠습니까?")){
			var pwd = document.querySelector('#pwd');
			if(pwd.value=='<%=user.getUserPwd()%>') {
					var conf = {
						url : '/user/' +
	<%=user.getUserNum()%>
		,
						method : 'DELETE',
						success : function(res) {
							if (res == 1) {
								alert('탈퇴하셨습니다.');
								location.href = "/uri/book/homePage";
							} else {
								alert('탈퇴에 실패하였습니다.');
							}
						}
					}
					au.send(conf);
				} else {
					alert('기존비밀번호가 틀렷습니다.');
				}
			}
		}
		save.addEventListener('click', saves);
		cancel.addEventListener('click', back);
		joinout.addEventListener('click', out);
	</script>
</body>
</html>