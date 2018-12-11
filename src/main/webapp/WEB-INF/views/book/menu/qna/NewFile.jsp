<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>스프링테스트</title>
</head>
<style>
#wrap {
width: 750px;
height: 0 auto;
border-left: 1px solid #ccc;
border-right: 1px solid #ccc;
border-bottom: 2px solid #9DB9BE;
background: url(../img/이미지.gif) bottom left no-repeat #FFF;/*이미지*/
}

/* main menu */
#mainmenu {
width: 100%;
height: 80px;
border-top: 3px solid #9DB9BE;
border-bottom: 1px solid #9DB9BE;
}

/* sub menu */
#submenu {
float: left;
width: 163px;
}

/* content */
#content {
margin-left: 165px;
width: 555px;
height: 800px;/*높이를 변경해서 확인해보세요*/
padding: 20px 10px 20px 15px;
border-left: 1px solid #9DB9BE;
background: #FFF;
}
</style>
<body>
<div id="wrap">
<div id="mainmenu"><h1>메인메뉴</h1></div>
<div id="submenu"><h1>서브메뉴</h1></div>
<div id="content">컨텐츠</div>
</div>
</body>
</html>