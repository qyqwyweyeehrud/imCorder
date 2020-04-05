<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_background</title>
<style>
	div{
		border:1px solid #000;
		width:500px;
		height:500px;
		margin:0 30px 30px 0;
		display:inline-block;
	}
	#div1{
		overflow:auto;
		background-image:url(../image/qq.jpg);		
		background-attachment:fixed;
	}
	#div2{
		background-image:url(../image/qq.jpg);
		background-repeat:no-repeat;
		background-position:20px 20px;
	}
	#div3{
		background-image:url(../image/qq.jpg);
		background-repeat:repeat-x;
	}
	#div4{
		background-image:url(../image/qq.jpg);
		background-repeat:repeat-y;
	}
	#div5{
		background-image:url(../image/qq.jpg);
		background-size:100% 100%;
	}
</style>
</head>
<body>
	<h3>바탕 이미지</h3>
	<ul>
		<li>background-image:url(path)</li>
		<li>background-attachement:fixed , scroll</li>
		<li>background-position : x y , left , right , bottom , top , center</li>
		<li>background-repeat : repeat-x , repeat-y , no-repeat</li>
		<li>background-size : sizeX sizeY</li>
	</ul>
	
	<div id='div1'> 내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역내용이 엄청 많은 영역</div>
	<div id='div2'></div>
	<div id='div3'></div>
	<div id='div4'></div>
	<div id='div5'></div>
	
	<script>
		
	</script>
</body>
</html>