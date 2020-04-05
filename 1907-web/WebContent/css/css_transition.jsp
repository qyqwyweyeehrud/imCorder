<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_transition</title>
<style>
	div[id]{
		display:inline;
		border:2px solid #000;
		padding:10px;
		width:100px;
		margin:3px;
		background-color:#000;
		color:#fff;
		transform:rotate(0deg);
		opacity:0.4;
		transition:transform 1s,color 1s, background 1s,opacity 1s;
	}
	div[id]:hover{
		border:2px solid #000;
		background-color:#fff;
		color:#000;
		transform:rotate(3deg);
		opacity:1;
		transition:transform 1s,color 1s, background 1s,opacity 1s;
	}
	.a{
		
		border:2px solid #000;
		width:10px;
		height:400px;
		background-color:#999;
		transition:width 1s;
		
	}
	.a:hover{
		width:200px;
		transition:width 1s;
		
	}
</style>
</head>
<body>
	<h3>transition</h3>
	<div id='a'>html</div>
	<div id='b'>css</div>
	<div id='c'>javascript</div>
	<div id='d'>jsp</div>
	<div id='e'>java</div>
	
	<div class='a'></div>
</body>
</html>