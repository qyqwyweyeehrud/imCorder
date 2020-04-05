<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문단모양</title>
</head>
<body>
<h2>1.span</h2>
	<span>abc</span><span>1234</span>
	<span>abc</span>
	<span>1234</span>

<h2>2.label</h2>
	<label>가나다</label><label>abc</label><label>123</label>
	<label>가나다</label>
	<label>abc</label>
	<label>123</label>

<h2>2.p</h2>
	<p>가나다</p><p>abc</p><p>123</p>

<h3>4.div</h3>
	<div align='left'>가나다</div>
	<div align='right'>abc</div>
	<div align='center'>123</div>

<h3>5.pre</h3>
	<pre>
가나다
   acb  32
      21
 	      <font color='red'>32</font>  32
	</pre>
<h3>6.xmp</h3>
	<xmp>
가나다
   acb  32
      21
 	      <font color='red'>32</font>  32
	</xmp>
<h3>7.hr</h3>
	<hr/>
	<hr width='500'px/>
	<hr width='500'px size='20'/>
	<hr width='500'px size='20' align='center'/>
	<hr width='500'px size='20' noshade/>
<h3>8.blockquote</h3>
	주제<br/>
	<blockquote>이곳은 <br/>들여쓰기된 <br/>내용입니다.</blockquote>
<h3>9.fieldset</h3>
	<fieldset>
		<legend>첫번째모양</legend>
		이곳은 내용입니다
	</fieldset>
	<fieldset>
		<legend align='right'>두번째모양</legend>
		이곳은 내용입니다
	</fieldset>
</body>
</html>