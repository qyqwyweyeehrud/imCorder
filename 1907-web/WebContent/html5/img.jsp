<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지</title>
</head>
<body>
<h3>1.이미지 경로를 절대경로과 상대결로지정</h3>
	<img src='../image/eee.gif'><br/>
	<img src='/1907-web/image/back.gif'><br/>
<h3>2.이미지 표시 사이즈 변경</h3>
	<img src='../image/eee.gif' width='100px'><br/>
	<img src='../image/back.gif' width=40%><br/>
	<img src='../image/eee.gif' width=50px height=100px><br/>

<h3>3.문자와 이미지의 배치</h3>
	<p>
		<img src='../image/back.gif' align='left'>
		align='left'속성은 이미지가 문자의 왼쪽에 배치된다는 의미임.
	</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<p align='right'>
		<img src='../image/back.gif' align='right'>
		align='right'속성은 이미지가 문자의 왼쪽에 배치된다는 의미임.
	</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	<p>
		<img src='../image/back.gif' align='left' hspace='50px'>
		align='left'속성은 이미지가 문자의 왼쪽에 배치된다는 의미임.
	</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
<h4>4.Use Map</h4>
	<img src='../image/ewew.jpg' usemap='#usemap_img'>
	<map name='usemap_img'>
		<area shape='rect' coords ='0,0,224,224' target='su' href='https://www.naver.com/'/>
		<area shape='rect' coords ='224,0,448,224' target='su' href='https://www.google.co.kr/'/>
		<area shape='rect' coords ='0,224,224,448' target='su' href='https://www.nate.com/'/>
		<area shape='rect' coords ='224,224,448,448' target='su' href='https://www.daum.net/'/>
	</map>
</body>
</html>