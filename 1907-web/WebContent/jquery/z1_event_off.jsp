<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_off</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h1>Header-0</h1>
	<h1>Header-1</h1>
	<h1>Header-2</h1>
	
	<script>
		let cnt = 1;
		$(document).ready(function(){
			$('h1').click(function(){
				$(this).html(cnt + '번째 click!!!!');
				cnt++;
				$(this).off();
			})
		});
	</script>

</body>
</html>