<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>position</title>
<style>
	div[id]{
		border:1px solid #aaaaff;
		height:50px;
	}
	#absolute>div{
		position:absolute;
	}
	#absolute>.c5{left:400px; top:0px;}
	#absolute>.c4{left:350px; top:10px;}
	#absolute>.c3{left:250px; top:20px;}
	#absolute>.c2{left:200px; top:30px;}
	#absolute>.c1{left:150px; top:40px;}
	#absolute>div:hover{
		background-color:#ddd;
		cursor:pointer;
	}
	
	#relative>div{
		position:relative;
	}
	#relative>.c5{left:400px; top:-80px;}
	#relative>.c4{left:350px; top:-60px;}
	#relative>.c3{left:250px; top:-40px;}
	#relative>.c2{left:200px; top:-20px;}
	#relative>.c1{left:150px;}
	
	#fixed{
		position:fixed;
		width:100px;
		height:120px;
		background-color:#ff0000;
		opacity:0.7;
	}
	#fixed:hover{
		opacity:1;
	}
	
</style>
</head>
<body>
	<div id='absolute'>
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>JavaScript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>JAVA</div>
	</div>
	<div id='relative'>
		<div class='c1'>HTML</div> <!-- 클래스는 중복될수있다 -->
		<div class='c2'>CSS</div>
		<div class='c3'>JavaScript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>JAVA</div>
	</div>
	<div id='fixed'>
		<div class='c1'>HTML</div>
		<div class='c2'>CSS</div>
		<div class='c3'>JavaScript</div>
		<div class='c4'>JSP</div>
		<div class='c5'>JAVA</div>
	</div>
무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 무척이나긴문장 
</body>
</html>