<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_transform</title>
<style>
	div{
		border:2px solid #aaaaff;
		width:400px; height:150px;
		margin-bottom:20px;
	}
	#rotate>span{
		position:absolute;
		margin:40px;
		font-size:3em;
		-webkit-transform-origin: 0% 0%;/*회전축 좌표*/
		transform:rotate(25deg);
	}
	#scale{
		height:400px;
		width:auto;
	}
	#scale>.a{
		transform:scale(0.5);
	}
	#scale>.b{
		position:relative;
		top:-200px;
		left:100px;
		transform:scale(0.2);
	}
	#scale>.c{
		position:relative;
		top:-500px;
		left:400px;
	}
	#skew>span{
		position:absolute;
		transform:skew(40deg, 20deg);
	}
	#translate>span{
		font-size:2em;
		position:absolute;
		transform:translate(100px,30px);
	}
</style>
</head>
<body>
	<h3>transform</h3>
	<ul>
		<li>rotate</li>
		<li>scale</li>
		<li>skew</li>
		<li>translate</li>
	</ul>
	<hr/>
	<div id='rotate'>
		<span>화이팅 1907</span>
	</div>
	<div id='scale'>
		<img src='../image/back.gif' class='a'/>
		<img src='../image/back.gif' class='b'/>
		<img src='../image/back.gif' class='c'/>
	</div>
	<div id='skew'>
		<span>화이팅 1907</span>
	</div>
	<div id='translate'>
		<span>화이팅 1907</span>
	</div>

</body>
</html>