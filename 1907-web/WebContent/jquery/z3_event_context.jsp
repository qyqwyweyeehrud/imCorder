<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_context</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<div>
		<h1>HEADER 1</h1>
		<p>Paragraph</p>
	</div>
	<div>
		<h1>HEADER 2</h1>
		<p>Paragraph</p>
	</div>
	<div>
		<h1>HEADER 2</h1>
		<p>Paragraph</p>
	</div>
	
	<script>
		$(document).ready(function(){
			$('div').on('click', function(){
				var header = $('h1',this).text();
				var para = $('p',this).text();
				
				alert(header + para);
			});
		});
	</script>

</body>
</html>