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
	<img src='../image/ewew.jpg'/>
	<img src='../image/qq.jpg'/>
	<img src='../image/qwqw.jpg'/>
	
	<script>
		$(document).ready(function(){
			$('img').attr({
				width:function(index){
					return (index+1) *100;
				}, height:100
			});
		});
	</script>
</body>
</html>