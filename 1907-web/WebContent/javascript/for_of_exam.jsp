<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for of</title>
</head>
<body>
	<h3>for of</h3>
	<p id='info'>
		배열의 정수를 임의의 개수를 저장한 후 for of를 사용하여 최대값과 최소값을 검색하여 civ에 출력하시오.
	</p>
	<div id='result'></div>
	<script>
		let cnt=[52,273,103,32,57,103,31,2];
		let x;
		let max = cnt[0];
		let min = cnt[0];
		for(x of cnt){
			if(max<x){
				max = x;
			}
			if(min>x){
				min = x;
			}
			
		}
		let r = document.getElementById('result');
		r.innerHTML = '<li>최대값 : '+max+' <li>최소값 : ' + min;
	</script>
</body>
</html>