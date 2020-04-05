<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_extend</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>array_extend</h3>
	<p id='info'>
		$.extend()를 사용하여 배열의 요소를 추가한다.
	</p>
	<script>
		let obj = { name : '길동이'};
		//$.extend를 사용한 요소추가
		$.extend(obj,{age:18 ,kor:90 , eng:60 , mat:80 });
		
		$(obj).each(function(index,item){//index는 순서(0,1,2,~~) 로 된다 / item은 obj가 된다
			console.log(index + ":" + item);
		});
		$.each(obj,function(index,item){//index가 속성값이 된다 / item은 값이 된다
			console.log(index + ":" + item);
		});
	</script>
</body>
</html>