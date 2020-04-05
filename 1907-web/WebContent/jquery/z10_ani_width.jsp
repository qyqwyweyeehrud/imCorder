<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_width</title>
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
	<h3>마우스를 클릭하면 넓이 변경</h3>
	<div></div>
	
	<script>
		$(document).ready(function(){
			$('div').click(function(){
				let width = $(this).css('width');
				let height = $(this).css('height');
				
				$(this).animate({
					width : parseInt(width)+ 50,
					height : parseInt(height) + 50
					},'slow');
			});
			$('div').mouseout(function(){
				$(this).animate({
					width : 50,
					height: 50
				},'slow');
			});
		});
	</script>
</body>
</html>