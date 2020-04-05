<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>csstest</title>
	<style>
		#div1{
			border : 1px solid #00f;
			background-color : #ccf;
			width : 400px;
			height : 80px;
		}
	</style>
	
	<link rel="styleSheet" type='text/css' href='csstest.css'/>
</head>
<body>
	<p>
		<ol>
			<li>&ltstyle&gt태그를 사용한 방법</li>
			<li>태그속성중 style을 사용 하는 방법</li>
			<li>외부에 css파일을 작성한 후 link태그를 사용하여 가져다 쓰는 방법</li><!-- 형장에선 이방법을 가장많이 씀 -->
		</ol>
	</p>
	<h3>css적용방법</h3>
	<div id='div1'></div>
	<div id='div2' style='border:1px solid #00f;width:400px;height:80px'></div>
	<div id='div3'></div>

</body>
</html>