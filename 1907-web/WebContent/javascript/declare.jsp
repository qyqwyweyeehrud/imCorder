<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언하는 방법</title>
<style>
	p div:nth-child(2n-1){
		color:red;
	}
</style>
<script>
	function gugu(){
		let dan=5;
		let i=0;
		let r=0;
		let p =document.getElementById('result');
		p.innerHTML ='';
		for(i=1 ; i<10;i++){
			r = '<div>' + dan + "*" + i + "=" + (dan*i) + '<div/>';
			/*document.write(r);
			document.write('<br/>');*/
			p.innerHTML = p.innerHTML + r;
		}
	}
</script>

</head>
<body>
	<input type='button' value='OK' onclick='alert("OK")'/>
	<input type='button' value='OK' onclick='javascript:a=10;b=20;c=a+b;alert(c)'/><!-- 컨트롤 문은 이곳에 넣지않는다 -->
	
	<p id='result'></p>  <!-- innerHTML>주로사용 innerText>태그들이 해석되지않음 브라우저에따라서 안되서 안씀 -->
	<input type='button' value='구구단' onclick='gugu()'/>
<script>
	document.write("김도경");
	console.log("hi.....","김도경");
</script>

</body>
</html>