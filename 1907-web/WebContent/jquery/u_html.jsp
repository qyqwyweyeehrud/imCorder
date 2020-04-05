<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h1>header-0</h1>
	<h1>header-1</h1>
	<h1>header-2</h1>
	
	<script>
		$(document).ready(function(){
			$('h1').html(function(index,html){
				return '★ '+html+ '★';
			});
		});
	</script>
</body>
</html>