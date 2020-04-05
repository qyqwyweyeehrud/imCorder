<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>canvas shadow</title>
<style>
	.can{
		border:1px dashed #ff0000
	}
</style>
</head>
<body>
	<h3>shadow</h3>
	<canvas id='can1' class='can' width='300px' height='300px'></canvas><br/>
	<form name='frm'>
		<label>바탕색</label>
		<input type='color' name='bgcolor'/> <!-- 선택된색이 밸류값에 자동으로 들어감 -->
		<label>그림자색</label>
		<input type='color' name='sdcolor'/>
		<input type='button' value='확인' id='btnRun'/>
	</form>
	
	<script>
		frm.bgcolor.value = localStorage.getItem('a');
		frm.sdcolor.value = localStorage.getItem('b');
		let btn = document.getElementById("btnRun");
		btn.onclick=function(){//이벤트는 클릭, 핸들러는 온클릭
			let bc = frm.bgcolor.value;//밸류의 값
			let sd = frm.sdcolor.value;
			//alert(bc+","+sd);
			let canvas = document.getElementById("can1");
			let ctx = canvas.getContext('2d');
			ctx.fillStyle = bc;
			ctx.shadowColor= sd;
			ctx.shadowOffsetX='3';
			ctx.shadowOffsetY='3';
			ctx.shadowBlur='6';
			ctx.fillRect(30,30,240,240);
			localStorage.setItem('a',bc);
			localStorage.setItem('b',sd);
		}
	</script>
</body>
</html>