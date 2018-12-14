<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>도서관 소개</title>
<link rel="stylesheet" type="text/css"
	href="${resPath}/css/menuCss/history.css">
</head>
<body>
	<%@ include file="../home.jsp"%>
	<%@ include file="../menuHead.jsp"%>
	<section id="historysection">
	<div class="testimonial-quote group right">
        <div class="righta"><img src="${resPath}/img/menu/flowers1.png"></div>
        <div class="quote-container">
            <div>
                <div class="ejblockquote">
                    <p>A good incense - 마음을 안정시켜주며 공간의 분위기를 부드럽게 만들어주는 향”</p>
                </div>  
                <cite><span>Petunia</span><br>
                   	I feel comfortable with you<br>
                   	 당신과 있으면 마음이 편해집니다.
                </cite>
            </div>
        </div>
        <div id="historystart">
        <h1>History</h1>
 			<table>
	 			<tr class="historyhr" id="histone">
	 				<td class="historyYears">2018.10</td>
	 				<td class="historyContents">
		 				<ul>
	        				<li> ㆍ 도서관 구축</li>
	        			</ul>
        			</td>
 				</tr>
 				<tr class="historyhr" id="histone">
	 				<td class="historyYears">2018.11</td>
	 				<td class="historyContents">
		 				<ul>
	        				<li> ㆍ 도서관 설립</li>
	        			</ul>
        			</td>
 				</tr>
 				<tr class="historyhr" id="histone">
	 				<td class="historyYears">2018.12</td>
	 				<td class="historyContents">
		 				<ul>
	        				<li> ㆍ 도서관 설립 완공식</li>
	        			</ul>
        			</td>
 				</tr>
 			</table>
        	<div class="clear"></div>
        	<!-- <ul class="historyhr" id="histone">
        		<li class="historyYears">
        		2018.9
        		</li>
        		<li class="historyContents">
        			<ul>
        				<li> ㆍ 도서관 설립</li>
        				<li> ㆍ 도서관 설립2</li>
        			</ul>
        		</li>
        	</ul>
        	<div class="clear"></div>
        	<ul class="historyhr">
        		<li class="historyYears">
        		2018.10
        		</li>
        		<li class="historyContents">
        			<ul>
        				<li> ㆍ 도서관 설립</li>
        				<li> ㆍ 도서관 설립2</li>
        			</ul>
        		</li>
        	</ul> -->
        	
        </div>
  </div>

	</section>
	<%@ include file="../footer.jsp"%>
	<script>
		detextname.textContent = "연혁";
		callback.addEventListener("click", gohome);
	</script>
</body>
</html>