<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>setInterval</title>
<style>
	#watch{
		width:220px;
		height:120px;
		border:1px dashed #000;
		box-sizing: border-box;
		box-shadow: 1px 1px 2px #555;
		margin:auto;
		border-radius: 15px;
	}
	#date{
		border-top: 1px solid #888;
		border-radius: 10px;
		margin:20px 20px 10px 20px;
		text-align: center;
		box-sizing: border-box;

	}
	#time{
		border-bottom: 1px solid #888;
		border-radius: 10px;
		margin:10px 20px 10px 20px;
		text-align: center;
		font-size: 2em;
		box-sizing: border-box;
	}
</style>
</head>
<body>
	<h3>setInterval</h3>
	<div id = 'watch'>
		<div id = 'date'></div>
		<div id = 'time'></div>
	</div>
	<script>
		let date = document.getElementById('date');
		let time = document.getElementById('time');
		let weeks =['일','월','화','수','목','금','토'];
		let func = function(){
			let now = new Date();
			let year = now.getFullYear();
			let month = now.getMonth()+1;//0월 ~ 11월 로 나오니까 +1
			let day = now.getDate();
			let week = now.getDay();
			let hour = now.getHours();
			let min = now.getMinutes();
			let sec = now.getSeconds();
			
			//시분초 2자리로
			if(hour<10){
				hour = '0'+hour;
			}
			if(min<10){
				min = '0'+min;
			}
			if(sec<10){
				sec = '0'+sec;
			}
		
			let d = `\${year} 년 \${month} 월 \${day}일(\${weeks[week]})`;
			let t = `\${hour}: \${min}: \${sec}`;
			
			date.innerHTML = d;
			time.innerHTML = t;
		}
		setInterval(func,1000);
	</script>

</body>
</html>