<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cdnTest</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
</head>
<body>
	<h3>jquery를 쓰는 첫번째 방법</h3>
	<script>
		
		$(document).ready(function(){
			alert("First");
		});	//이방법은써도되고
		//window.onload = function(){} 은 단일 페이지에서는 실행되지만 서브페이지에서는 안된다 . 하지만 위의 방법은 된다
		
		$(function(){
			alert("Second");
		})//간단한 표현식
	</script>

</body>
</html>