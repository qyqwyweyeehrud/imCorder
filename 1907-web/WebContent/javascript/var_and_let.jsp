<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>var_let</title>
</head>
<body>
<script>
	for(var i =1;i<=100 ;i++){}//var는 전역스코프
	console.log('i',i);//101d이 출력됨
	for(let j =1;j<=100 ;j++){}//let은 지역스코프
	console.log('j',j);//not defined 오류
	
	var v1 = 100;
	var v1 = 200;//재선언 가능
	
	let v2 = 100;
	let v2 = 100;//재선언 불가능
	
	function a(){
		var irum ='hong';// 전역 스코프란 의미가 전역 변수는 아니다.
		//irum ='hong';//얘가 전역변수이다
	}
	function b(){
		alert(irum);//irum is not defined
	}
	
</script>
</body>
</html>