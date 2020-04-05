<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_movebox</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	div{
		width:50px;
		height:50px;
		background-color: orange;
		position:relative;
	}
</style>
</head>
<body>
	<h3>박스에 마우스를 올리면 박스가 오른쪽으로 이동</h3>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	
	<script>
		$(document).ready(function(){
			$('div').hover(
				function(){
					$(this).animate({
						left:500
					},500);
					$(this).css('border','2px solid black');
				},
				function(){
					$(this).animate({
						left:0
					},500);
					$(this).css('border','2px solid orange');
				}
			);
		});
	</script>
	
</body>
</html>