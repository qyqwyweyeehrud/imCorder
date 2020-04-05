<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list_style</title>
<style>
	#ul1,#ul2{
		list-style-image:url(../image/qwqw.jpg);
	}
	#ul1{
		list-style-position:inside;
	}
	#ul2{
		list-style-position:outside;
	}
</style>
</head>
<body>
	<ul>
		<li>list-style-image:url(path)</li>
		<li>list-style-position:inside,outside</li>
	</ul>
	<ul id='ul1'>
		<li>백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 백두산 </li>
		<li>백두산</li>
		<li>한라산</li>
		<li>설악산</li>
		<li>금강산</li>
		<li>치악산</li>
	</ul>
	<ul id='ul2'>
		<li>강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 강아지 </li>
		<li>강아지</li>
		<li>송아지</li>
		<li>망아지</li>
	</ul>

</body>
</html>