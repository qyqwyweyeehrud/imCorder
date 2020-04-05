<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>anchor</title>
</head>
<body bgcolor='#f8d94a'>
<h4>1.새페이지에 링크연결</h4>
	<a href='http://www.jobtc.kr'>우리카페</a><br/>
	<a href='http://www.naver.com'>네이버</a><br/>
	<a href='http://192.168.0.31:8888/1907-web/html5/anchor.jsp'>현경</a>

<h4>2.새 페이지(탭)에 링크연결</h4>
	<a href='http://www.jobtc.kr' target='_blank'>우리카페</a><br/>
	<a href='http://www.naver.com' target='_blank'>네이버</a><br/>
	<a href='http://192.168.0.31:8888/1907-web/html5/anchor.jsp' target='_blank'>현경</a>

<h4>3.특정 브라우저(프레임)에 링크연결</h4>
	<a href='http://www.jobtc.kr' target='sub_page'>우리카페</a><br/>
	<a href='http://www.naver.com' target='sub_pa'>네이버</a><br/>
	<a href='http://192.168.0.31:8888/1907-web/html5/anchor.jsp' target='sub'>현경</a>

<h4>4.책갈피</h4>
	<a href='#1장'>1장</a>
	<a href='#2장'>2장</a>
	<a href='#3장'>3장</a>
	<a href='#4장'>4장</a>
	<a href='#5장'>5장</a><br/>
	<a href='http://192.168.0.31:8888/1907-web/html5/anchor.jsp#2장' target='sub'>형경3장으로</a>

<h4>5.iframe에 연결</h4>
	<iframe width='700px' height='1000px' name='my_frame' style='border:2px solid #0000ff'>
</iframe><br/>
	<a href='http://www.jobtc.kr' target='my_frame'>우리카페</a><br/>
	<a href='https://www.op.gg/' target='my_frame'>op</a><br/>
	<a href='http://192.168.0.31:8888/1907-web/html5/anchor.jsp' target='my_frame'>현경</a>
	<a href='font.jsp' target='my_frame'>font test</a><br/>
	<a href='paragraph.jsp' target='my_frame'>paragragh</a><br/>
<hr/>

<h4>6.filedownload</h4>
	<img src='../image/back.gif'><br/>
	<a href='../image/back.gif'>미리보기</a><br/>
	<a href='../image/back.gif' download='test.gif'>다운로드</a>



<div id='1장'>
여기는 1장입니다
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>
<div id ='2장'>
여기는2장입니다
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>
<div id ='3장'>
여기는3장입니다
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</div>

</body>
</html>