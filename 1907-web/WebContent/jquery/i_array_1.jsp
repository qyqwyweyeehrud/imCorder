<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_1</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>배열관리 (배열안의 값 컨트롤 쉽게하기)</h3>
	<p id ='info'>
		<li> $.each(function(index,item){...})</li>
		<li> $(selector).each(function(index,item){...})</li>
	</p>
	<script>
		$(document).ready(function(){//코드 맨아래에있을 경우엔 안써도 무방함
			let array1 = [123,123,12,312,3,213,12,4,124,21,4124,1,2];
			let array2 =[
				{name:'hong' , age:18 , score:40},
				{name:'kim' , age:13 , score:60},
				{name:'park' , age:14 , score:20},
				{name:'lee' , age:15 , score:80},
				{name:'choi' , age:16 , score:90}
			];
			
			//array1에서 100보다 큰수만
			$(array1).each(function(index,item){//일반 셀렉터는 '' 가 붙지만 배열 변수에는 붙이지 않는다
				if(item>100){
					console.log(index + ':' + item);
				}
			});
			//array2에서 scorer가 60이상인것
			$(array2).each(function(index,item){
				if(item.score >= 60){
					console.log(index + ":" + item.name + "," + item.age + "," + item.score)
					
				}
			});
		});
	</script>

</body>
</html>