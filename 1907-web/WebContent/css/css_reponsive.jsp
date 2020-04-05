<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_responsive</title>
</head>
<style media='screen and (min-width:1000px)'> /*브라우저의 넓이가 최소 1000일때 이전스타일을 가지고가라*/
	#main{
		margin:auto;
		width:1200px;
		height:400px;
		background-color:#eee;
	}
	#main div{
		float:left;
	}
	#left{
		width:200px;
		height:400px;
		background-color:#000;
	}
	#center{
		width:800px;
		height:400px;
		background-color:#555;
	}
	#right{
		width:200px;
		height:400px;
		background-color:#999;
	}
</style>
<style media='screen and (min-width:800px) and (max-width:999px)'> /*브라우저의 넓이가 최소 800이고 최대 999일때 이전스타일을 가지고가라*/
	#main{
		margin:auto;
		width:900px;
		height:400px;
		background-color:#eee;
	}
	#main div{
		float:left;
	}
	#left{
		width:200px;
		height:400px;
		background-color:#000;
	}
	#center{
		width:700px;
		height:400px;
		background-color:#555;
	}
	#right{
		clear:left;
		width:100%;
		height:400px;
		background-color:#999;
	}
</style>
<style media='screen and (max-width:799px)'> /*브라우저의 넓이가 최소 799일때 이전스타일을 가지고가라*/
	#main{
		overflow:hidden;
		margin:auto;
		width:900px;
	}
	#main div{
		/*float:left;*/
	}
	#left{
		width:100%;
		height:400px;
		background-color:#000;
	}
	#center{
		width:100%;
		height:400px;
		background-color:#555;
	}
	#right{
		clear:left;
		width:100%;
		height:400px;
		background-color:#999;
	}
</style>
<body>
<h3>responsive(반응형웹)</h3>
<dl>
	<dt>link 태그를 사용한 반응형</dt>
	<dd> media='screen and(최소크기) and (최대크기)' href='path'</dd>
	<dt>style 태그를 사용한 반응형</dt>
	<dd> media='screen and (최소크기) and (최대크기)'</dd>
	<dt>가로 ,세로 모드</dt>
		<dd>media='screen and (orientation:portrait(세로)) | landscape(가로))'</dd>
</dl>
<div id='main'>
	<div id='left'></div>
	<div id='center'></div>
	<div id='right'></div>
</div>

</body>
</html>