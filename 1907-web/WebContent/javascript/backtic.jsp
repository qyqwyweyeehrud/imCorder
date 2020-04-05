<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>backtic=`</title>
</head>
<body>
	<script>
		let str = 'asdsdwqrr sdasd qd qdwqdqdq'
				+ 'qweqdqwd wqdq dw';
		let str2 = `sda dasdasddas 
					asddsa sadsd sdaas
					asdasdasdsadasdasd`;
		console.log('str1',str);
		console.log('str2',str2);
		
		var v1=100;
		var v2=200;
		var v3=v1*v2;
		let str3 =`\${v1}*\${v2}=\${v3}`;//$가 el태그가 아니라고하기위해 \를 붙혀줌
		console.log('str3',str3);
	</script>
</body>
</html>