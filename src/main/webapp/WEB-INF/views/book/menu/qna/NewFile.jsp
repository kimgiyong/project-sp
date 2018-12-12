<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<style>
#scrollDiv{
	width:500px;
	height:200px;
	border:1px solid blue;
	overflow:auto;
}
.son{
	width:50px;
	height:50px;
	border:1px solid red;
}
</style>
<script>
function key(){	
 	$('#scrollDiv').scrollTop($('#scrollDiv').prop('scrollHeight'));
}



function addDiv(){
	var scrollDiv = document.getElementById('scrollDiv');
	/* var newElement = '<div class="son"></div>';
	scrollDiv.insertAdjacentHTML("beforeend", newElement); */
	scrollDiv.innerHTML += '<div class="son"><div>';
	key();
}
</script>

<body>


<div id="scrollDiv" style="overflow:auto" >
	<div class="son"></div>
</div>
<button onclick="addDiv()">추가</button>
</body>

</html>