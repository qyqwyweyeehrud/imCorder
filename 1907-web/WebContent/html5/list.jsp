<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트</title>
</head>
<body>
	<p>
		<ul>
			<li>OL:번호가 붙어있는 <br/>목록 태크</li>
			<li>UL:기호가 붙어있는 목록 태그</li>
			<li>DL:번호나 기호가 없는 목록 태그</li>
		</ul>
	</p>
	
	<div>
		<h3>OL(Orderd List)</h3>
			<ol start='9'>
				<li>봄</li>
				<li>여름</li>
				<li>가을</li>
				<li>겨울</li>
			</ol>
			<ol type='i' start='5'>
				<li>백두산</li>
				<li>한라산</li>
				<li>치악산</li>
				<li>설악산</li>
				<li>금강산</li>
			</ol>
			<ol type='A' start='5'>
				<li>백두산</li>
				<li>한라산</li>
				<li>치악산</li>
				<li>설악산</li>
				<li>금강산</li>
			</ol>
		
	</div>
	<hr/>
	<div>
		<h3>UL(unOrdered List)</h3>
			<ul>
				<li>1조</li>
				<li>2조</li>
				<li>3조</li>
				<li>4조</li>
			</ul>
			<ul type='circle'>
				<li>1조</li>
				<li>2조</li>
				<li>3조</li>
				<li>4조</li>
			</ul>
	</div>
	<hr/>
	<div>
		<h3>DL(Definition List)</h3>
			<dl>
				<dt>파리에가면</dt>
				<dd>에펠탑도있고</dd>
				<dd>크루아상도있고</dd>
			</dl>
	</div>

</body>
</html>