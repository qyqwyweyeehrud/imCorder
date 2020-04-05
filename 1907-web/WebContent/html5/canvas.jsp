<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>canvas</title>
<style>
	.can{
		border:2px solid #0000ff;
	}
</style>
</head>
<body>
	<h3>RECT</h3>
	<canvas id='can1' class='can' width='300px' height='150px'></canvas>
	<script>
		let canvas = document.getElementById('can1');//바디안의 내용중에 Id값에 의해서 가져와라
		let ctx = canvas.getContext('2d');//2d형대의 그림을 그릴수있는 도구를 가져와라
		ctx.strokeStyle ='rgb(255,0,0)';//선의색을 빨강으로 지정(붓에 물감을 발라논것)
		ctx.strokeRect(50.5,50.5,70,70);
		
		ctx.fillStyle = 'rgb(255,255,0)';
		ctx.fillRect(150,50,70,70);
	</script>
	
	<h4>RECT2반투명한 사각형</h4>
	<canvas id='can2' class='can' width='300px' height='150'></canvas>
	<script>
		canvas = document.getElementById('can2');
		ctx = canvas.getContext('2d');
		ctx.fillStyle = 'rgba(255,255,0,0.5)';
		ctx.fillRect(50,50,70,70);
		ctx.fillStyle = 'rgba(255,0,0,0.5)';
		ctx.fillRect(70,70,70,70);
	</script>
	
	<h3>막대그래프</h3>
	<canvas id='can3' class='can' width='300px' height='150'></canvas>
	<script>
		canvas = document.getElementById('can3');
		ctx = canvas.getContext('2d');
		ctx.fillStyle = 'rgba(134,178,94,0.7)';
		ctx.fillRect(10,10,200,20);
		ctx.font='20px 궁서체';
		ctx.strokeText('190',95,25);
		
		ctx.fillStyle = 'rgb(255,0,0)';
		ctx.fillRect(10,40,230,20);
		
		ctx.fillStyle = 'rgba(52,112,122,0.8)';
		ctx.fillRect(10,70,150,20);
	</script>
	
	<h4>삼각형 그리기</h4>
	<canvas id='can4' class='can' width='300px' height='300'></canvas>
	<script>
		canvas = document.getElementById('can4');
		ctx = canvas.getContext('2d');
		ctx.strokeStyle='rgb(255,0,0)';
		ctx.beginPath();
			ctx.moveTo(150,10);
			ctx.lineTo(10,290);
			ctx.lineTo(290,290);
		ctx.closePath();//이걸 먼저하면 마지막선을 그려준다
			ctx.stroke();//이걸먼저하면 마지막선을 그려주지 않는다
	</script>
	
	<h4>별그리기</h4>
	<canvas id='can5' class='can' width='300px' height='300'></canvas>
	<script>
		canvas = document.getElementById('can5');
		ctx = canvas.getContext('2d');
		ctx.strokeStyle='rgb(255,0,0)';
		ctx.beginPath();
			ctx.moveTo(10,100);
			ctx.lineTo(290,100);
			ctx.lineTo(50,290);
			ctx.lineTo(150,10);
			ctx.lineTo(250,290);
		ctx.closePath();
			ctx.stroke();
	</script>
	
	<h4>원,원호 그리기</h4>
	<canvas id='can6' class='can' width ='300px' height='400px'></canvas>
	<script>
		canvas = document.getElementById('can6');
		ctx = canvas.getContext('2d');
		ctx.strokeStyle='rgb(255,0,0)';
		ctx.beginPath();
			ctx.arc(75,75,60,0,Math.PI*1,false);//x,y,반지름,어디부터?0도부터,180까지,시계방향으로//true는 반시계방향으로
		ctx.closePath();
			ctx.stroke();
		
		ctx.beginPath();
			ctx.arc(225,75,60,Math.PI*0.5,Math.PI*1.5,false);
		ctx.closePath();
			ctx.stroke();
			
		//type2
		ctx.beginPath();
			ctx.moveTo(75,300);
			ctx.arc(75,225,60,0,Math.PI*1,true);
		ctx.closePath();
			ctx.stroke();
		
		ctx.beginPath();
			ctx.moveTo(225,200);
			ctx.arc(225,225,60,0,Math.PI*1,true);
		ctx.closePath();
			ctx.stroke();
	</script>
</body>
</html>






































