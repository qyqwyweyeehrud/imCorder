<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_radius</title>
<style>
	div{
		width:100px; height:100px; border:2px solid #ff0000;
		margin:10px;
		float:left;
	}
	#div1{
		font-size:0.5em;
		overflow:auto;
		text-align:justify;
	}
	#div2{
		border-radius:20px;
		box-shadow:3px 3px 5px #777;
	}
	#div3{
		border-radius:50px;
		
		box-shadow:10px 10px 1px #ff0000;
	}
	#div4{
		border-radius:30px 30px 0 0;
	}
	#div5{
		border-radius:0 0 30px 30px;
		box-shadow:-3px -3px 5px #777;
	}
	#div6{
		border-radius:30px 0 0 30px;
		box-shadow:-3px 0 7px #777;
	}
	#div7{
		border-radius:0 100px 0 100px;
	}
</style>
</head>
<body>
	<div id='div1'>
	123 가나다 !@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC123 가나다 
	!@#$ ABC
	</div>
	<div id='div2'></div>
	<div id='div3'></div>
	<div id='div4'></div>
	<div id='div5'></div>
	<div id='div6'></div>
	<div id='div7'></div>

</body>
</html>