<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for_in</title>
</head>
<body>
<h3>for_in,for_of</h3>
<p id='info'> 향상된 for문</p>
<input type='button' value='FOR-IN' id='btnIn'/>
<input type='button' value='FOR-OF' id='btnOf'/>
<script>
let p = document.getElementById('info');
let btnIn = document.getElementById('btnIn');
let btnOf = document.getElementById('btnOf');

btnIn.onclick = function(){
	console.log('-for in-------------------');
	let cnt = 0;
	let array=['a','b','c','d','e']
	for(x in array){//변수에 인덱스값이들어감
		cnt++;
		console.log(cnt + ":" + x,array[x]);
	}
}
btnOf.onclick = function(){
	console.log('-for of-------------------');
	let cnt = 0;
	let array=['a','b','c','d','e']
	for(x of array){//변수에 요소값이 들어감
		cnt++;
		console.log(cnt + ":" + x,array[x]);
	}
}
</script>

</body>
</html>