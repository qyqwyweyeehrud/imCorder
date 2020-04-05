<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>selector_1</h3>
	<ul>
		<li> 전체 선택자 : * (아스트링)</li>
		<li> 태그 선택자 : 태그명</li>
		<li id='id1'> 아이디 선택자 : #아이이명</li>
		<li class='class1'> 클래스 선택자 : .클래스명</li>
		<li modify='yes'> 속성 선택자 : 요소명[속성명=값]</li>
		
	</ul>
	<div>
		<span>자손1</span>
		<span>자손2</span>
		<span>자손3</span>
		<p>
			<span>후손1</span>
			<span>후손2</span>
			<span>후손3</span>
		</p>
	</div>
	<script>
		$(document).ready(function(){ //$(function(){...});
			//모든선택자
			$('*').css('border','1px solid #00f');
			//태그 선택자
			$('h3').css('background-color','#f90');
			//아이디 선택자
			$('#id1').css('color','#f00');
			//클래스 선택자
			$('.class1').css('color','#00f');
			//소겅 선택자
			$('li[modify=yes]').css('color','#0f0');
			//자손 태그
			$('div>span').css('font-size','0.5em');
			//후손 태그
			$('div span').css('color','#f00');
		});
	</script>

</body>
</html>