<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_one</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h1>Header-0</h1>
	<h1>Header-1</h1>
	<h1>Header-2</h1>
	
	<script>
		$(document).ready(function(){
			$('h1').one('click',function(){
				$(this).html(function(index,html){
					return html + '를 1번클릭하면 두번째클릭부터는 안먹어요';
				})
			})
		});
	</script>

</body>
</html>