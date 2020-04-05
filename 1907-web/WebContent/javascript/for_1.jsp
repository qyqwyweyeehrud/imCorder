<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for</title>
<style>
	#info{
		border:2px outset #9999ff;
		padding:20px;
		box-sizing:border-box;
		border-left-width:30px;
		box-shadow:3px 3px 6px #999;
	}
	form{
		margin-left:30px;
	}
	#result{
		margin:10px;
		border:2px solid #444;
		width:400px;
		height:400px;
		border-radius:20px;
		box-sizing:border-box;
		box-shadow:3px 3px 4px #777;
	}
</style>
</head>
<body>
	<p id='info'>
	1이상의 정수 n을 입력받아 1~n까지의 합계를 구하여 div 영역에 표시
	</p>
	<form name='frm'>
		<label>정수</label>
		<input type='text' name='n' value='100'/>
		<input type='button' value='RUN' name='btn'/>
	</form>
	<div id='result'></div>
	<script>
		frm.btn.onclick = function(){
			let s =0;
			let n = Number(frm.n.value);
			let r = document.getElementById('result');
			for(i=1 ; i<=n ; i++){
				s +=i;
			}
			r.innerHTML = '합계:'+s;
		}
	</script>
</body>
</html>