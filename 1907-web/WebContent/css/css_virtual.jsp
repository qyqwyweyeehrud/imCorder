<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css_virtual</title>
	<style>
		a{
			text-decoration:none; /*모든 밑줄이 사라짐*/
		}
		a:hover{
			text-decoration: underline;
			font-weight:bold;
			background-color:#ff0000;
		}
		a:link{
			color:#ff0000;
		}
		a:visited{
			color:#aaa;
		}
		a:active{
			color:#0000ff;
		}
		input[type]:focus{
			color:#ff0000;
			background-color:#aaa;
		}
		input[value]:blur{
			color:#000;
			background-color:#fff;
		}
		
	</style>
</head>
<body>
	<h3>가상 클래스</h3>
	<p>
		<ul>
			<li>:link =>링크의 초기상태</li>
			<li>:visited =>방문한적이 있는 링크</li>
			<li>:active =>링크를 클릭하고 있는 상태</li>
			<li>:hover =>마우수를 올려놓은 상태</li>
			<li>:focus =>커서가 위치하고 있는 상태</li>
			<li>:blur => 커서를 잃어버린 상태</li>
		</ul>
	</p>
	<h3>:link , :visited , :active</h3>
	<a href='http://www.jobtc.kr'>우리 카페</a><br/>
	<a href='http://abc.com'>방문전</a>
	
	<h3>:foucus , :blur</h3>
	<input type='text' value='hong'/>
	<input type='text' value='kim'/>
	
	
	
</body>
</html>