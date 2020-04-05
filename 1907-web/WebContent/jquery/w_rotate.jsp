<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>rotate</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<img src='../image/back.gif'/>
	<img src=''/>
	<img src=''/>
	<img src=''/>
	<img src=''/>
	
	<script>
		$(document).ready(function(){
			$('img').css({'width':'250px' , 'height':'250px'});
			
			setInterval(function(){
				$('img').first().appendTo('body');
			},0.1);
		});
	</script>
</body>
</html>