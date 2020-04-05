<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	.reverse{
		background-color:#000;
		color:#fff;
	}
</style>
</head>

<body>
	<h1>Header-0</h1>
	<h1>Header-1</h1>
	<h1>Header-2</h1>

	<script>
		$('h1').hover(
			function(){
				$(this).addClass('reverse');
				$(this).html(function(index,html){
					return html + '*';
				});
			},
			function(){
				$(this).removeClass('reverse');
			}
		);
		
	</script>
</body>
</html>