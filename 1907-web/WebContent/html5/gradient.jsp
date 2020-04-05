<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>그라이언트</title>
<style>
	.can{border:2px solid #8888ff}
</style>
</head>
<body>
	<h3>선형 그라데이션</h3>
	<canvas id='can1' class='can' width='300px' height='300px'></canvas>
	<form name='line'>
		<label>시작색</label>
			<input type='color' name='fcolor'>
		<label>중간색</label>
			<input type='color' name='mcolor'>
		<label>끝색</label>
			<input type='color' name='lcolor'>
		<input type='button' name='btn' value='선형으로'>
		<input type='button' name='btn2' value='원형으로'>
	</form>
	<script>
		line.btn.onclick = function(){
			let fc = line.fcolor.value;
			let mc = line.mcolor.value;
			let lc = line.lcolor.value;
			let ctx = document.getElementById('can1').getContext('2d');
			let gra = ctx.createLinearGradient(0,0,300,300);
			gra.addColorStop(0,fc);
			gra.addColorStop(0.5,mc);
			gra.addColorStop(1,lc);
			ctx.fillStyle = gra;
			ctx.fillRect(20,20,260,260);
		}
		line.btn2.onclick = function(){
			let fc = line.fcolor.value;
			let mc = line.mcolor.value;
			let lc = line.lcolor.value;
			let ctx = document.getElementById('can1').getContext('2d');
			let gra = ctx.createRadialGradient(150,150,0, 150,150,200);
			gra.addColorStop(0,fc);
			gra.addColorStop(0.5,mc);
			gra.addColorStop(1,lc);
			ctx.fillStyle = gra;
			ctx.fillRect(20,20,260,260);
		}
		
	</script>
	<h3>원형 그라데이션</h3>
</body>
</html>