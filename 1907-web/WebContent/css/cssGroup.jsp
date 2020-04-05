<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>css group</title>
	<style>
	
		div#abc{color:#ff0000;}
		div.abc{color:#ff0000;}
		/* div#abc , div.abc{color:#ff0000;} */
		span[abc]{
			color:#ff0000;
		}
		div#child>span{
			color:#ff0000;
		}
		div#desc span{
			color:#0000ff;
		}
		div#plus>span+span{
			color:#ff0000;
		}
		div#plus span+span{
			color:#ff0000;
		}
		
	</style>
</head>
<body>
	<h3>태그명#아이디</h3>
	<div id='abc'>id=abc</div>
	<div id='def'>id=def</div>
	
	<h3>태그명.클래스명</h3>
	<div class='abc'>class=abc</div>
	<div calss= 'def'>class=def</div>
	
	<h3>태그명[속성]</h3>
	<span abc='1'>abc=1</span>
	<span def='1'>def=1</span>
	
	<h3>태그명>태그명(자손)</h3>
	<div id='child'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
	
	<h3>태그명 태그명(후손)</h3>
	<div id='desc'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
	
	<h3>태그명+태그명</h3>
	<div id='plus'>
		<span>1</span>
		<span>2</span>
		<p>
			<span>3</span>
			<span>4</span>
		</p>
	</div>
</body>
</html>



































