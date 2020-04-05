<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switch</title>
</head>
<body>
	<p id ="info">
	prompt를 사용하여 정수 하난를 입력받아 짝수, 홀수를 구분하여 출력하고, 만약 숫자가 아니라면' 숫자를 입력하세요' 메세지를 div창에 출력.
	</p>
	<div id='result'></div>
	<script>
			var input = Number(prompt('숫자를 입력하세요','숫자'));
			let r = document.getElementById('result');
			switch(input%2){
				case 0:
					r.innerHTML = '짝수';
					break;
				case 1:
					r.innerHTML = '홀수';
					break;
				default:
					r.innerHTML = '숫자를 입력하셈';
				break;
			}
		
	</script>
	
</body>
</html>