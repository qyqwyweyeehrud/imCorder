<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>plugin</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>선택자를 사용하지 않는 플러그인</h3>
	<h1>header A</h1>
	<h2>header B</h2>
	
	<script>
		//플러그인 정의
		$.reload = function(){
			location = location;
		}
		//플러그인 호출
		$('h1').first().on('click',function(){
			
			$.reload();
		});
	</script>
</body>
</html>