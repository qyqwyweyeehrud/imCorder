<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hoising</title>
</head>
<body>
	<h3>hoising</h3>
	변수나 함수를 선언하기 전에 사용 가능하도록 메모리에 미리 상주시킨다는 의미
	<script>
	//변수의 hoising
	irum='hong';
	var irum;
	console.log('irum : ',irum);
	
	age=18;
	let age=0;//이렇게 하면 hoising되지 않기때문에 let사용전에 let선언을 먼저 해주어야 한다
	console.log('age : ',age);
	
	a();
	function a(){//메모리에 사용되지도 않는 데이터가 들어가는게 단점
		console.log('hoising된 함수');
	}
	
	f();// not defined
	f = function(){
		console.log('hoising 되지 않은 함수')
	}
	</script>
</body>
</html>