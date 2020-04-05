<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css적용하기(id,class)</title>
	<style>
		p{	/*모든 p태그에 이런속성을 지정하겠다*/
			font-family:궁서체;
		}
		li{	/*모든 li태그의 글자색을 파랑으로 바꿔라*/
			color:#0000ff;
		}
		#p1{
			border:2px solid #0000ff;
			height:60px; 
		}
		.c1{
			background-color:#ccccff;
			height:60px;
		}
		.c2{
			color:#ff0000;
			font-size:30px;
			margin-top:16px;
		}
	</style>
</head>
<body>
	<p>
		<ul>
			<li>id : #id로 적용</li>
			<li>class : .class명으로 적용</li>
		</ul>
		<hr/>
	</p>
	<p id='p1'>p1</p>
	<p class='c1'>c1</p>
	<p class='c1 c2'>c1,c2</p>

</body>
</html>