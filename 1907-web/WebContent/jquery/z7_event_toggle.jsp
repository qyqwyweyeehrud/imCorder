<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_toggle</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>event_toggle</h3>
	<button id='btnToggle'>Toggle</button>
	<button id='btnSlide'>Slide</button>
	<button id='btnFade'>Fade</button>
	<p/>
	<div id = 'result'>
		<img src='../image/back.gif'/>
	</div>
	
	<script>
		$(document).ready(function(){
			$('#btnToggle').on('click',function(){
				$('#result').toggle(1000);
			});
			$('#btnSlide').click(function(){
				$('#result').slideToggle(100);
			});
			$('#btnFade').on('click' ,function(){
				$('#result').fadeToggle('solw');
			})
		});
	</script>
</body>
</html>