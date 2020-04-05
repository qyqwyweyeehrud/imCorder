<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event_mouse</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#canvas{
		border: 3px solid black;
	}
	input{
		width:100px;
		height:100px;
	}
</style>
</head>
<body>
	<canvas id='canvas' width='700' height='400'></canvas>
	<form name='frm'>
	<input type='color' name='scolor'/>
	<input type='button' name='btnRemove' value='!!!!지우기!!!!!'/>
	<input type="range" min='1' max='15'name='ran'/>
	</form>
	
	<script>
		var canvas =document.getElementById('canvas');
		var context = canvas.getContext('2d');
		
		context.lineWidth = frm.ran.value;
		context.strokeStyle = frm.scolor.value;
		let flag=false;//movedown일때 ture , mouseup일때 false
		
		frm.btnRemove.onclick = function(){
			context.clearRect(0, 0, canvas.width, canvas.height);
		}
		
		//마우스 위치얻어내기
		$(canvas).on({
			mousemove : function(event){
				if(flag){
					context.lineWidth = frm.ran.value;
					context.strokeStyle = frm.scolor.value;
					
					let position = $(this).offset();
					let x = event.pageX - position.left;
					let y = event.pageY - position.top;
					
					context.lineTo(x,y);
					context.stroke();
				}
			},
			mousedown : function(event){
				context.lineWidth = frm.ran.value;
				context.strokeStyle = frm.scolor.value;
				
				var position = $(this).offset();
				var x = event.pageX - position.left;
				var y = event.pageY - position.top;
				
				//선그리기
				context.beginPath();
				context.moveTo(x,y);
				flag = true;
			},
			
			mouseup : function(event){
				context.lineWidth = frm.ran.value;
				context.strokeStyle = frm.scolor.value;
				
				var position = $(this).offset();
				var x = event.pageX - position.left;
				var y = event.pageY - position.top;
				
				//선그리기
				context.lineTo(x,y);
				context.stroke();
				flag = false;
			}
		});
	</script>

</body>
</html>