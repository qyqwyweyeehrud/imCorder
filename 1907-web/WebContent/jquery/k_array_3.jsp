<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	.high-light-0{
		background-color:yellow;
	}
	.high-light-1{
		background-color:red;
	}
	.high-light-2{
		background-color:blue;
	}
	.high-light-3{
		background-color:gray;
	}
	.high-light-4{
		background-color:green;
	}
</style>
</head>
<body>
	<h3>addClass()를 사용한 class 속성 추가</h3>
	<h1>item - 0</h1>
	<h1>item - 1</h1>
	<h1>item - 2</h1>
	<h1>item - 3</h1>
	<h1>item - 4</h1>
	
	<script>
		$(document).ready(function(){
			$('h1').each(function(index,item){
				$(this).addClass('high-light'+'-'+index);
			});
			
			
		})
	</script>
</body>
</html>