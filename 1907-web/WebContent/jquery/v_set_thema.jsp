<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_thema</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>테마만들기</h3>
	<div id='main'>
		<div id='subject'>
			제목
		</div>
		<div id='content'>
			내용
		</div>
		<button id = 'btn1'>흑백테마</button>
		<button id = 'btn2'>땅테마</button>
		<button id = 'btn3'>하늘테마</button>
	</div>
	
	<script>
		$('#btn1').on('click',function(){
			$('#main').css('background-image',"url(../image/back.gif)");
		});
		$('#btn2').on('click',function(){
			$('#main').css('background-image',"url(../image/baner.gif)");
		});
		$('#btn3').on('click',function(){
			$('#main').css('background-image',"url(../image/google.png)");
		})
		$(document).ready(function(){
			$('#main').css({'width':'1000px',
							'height':'1000px',
							'border' : '3px solid #f80',
							'border-radius': '20px',
							'opacity' : '0.3'
							});
			
		});
	</script>
</body>
</html>