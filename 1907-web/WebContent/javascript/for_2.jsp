<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>for</title>
</head>
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
		text-align:center;
		padding:10px;
		margin:10px;
		border:2px solid #444;
		width:400px;
		height:400px;
		border-radius:20px;
		box-sizing:border-box;
		box-shadow:3px 3px 4px #777;
		overflow:auto;
	}
	#result>div{
		padding:20px;
		font-weight:bold;
		font-size:1.5em;
	}
	#result>div:nth-child(2n){
		background-color:#ff0000;
		margin-bottom:10px;
	}
	#result>div:nth-child(2n-1){
		background-color:#0000ff;
		margin-bottom:10px;
	}
</style>
<body>
	<p id='info'>
	2~9단까지 구구단을 출력하시오<br/>
	홀수단의 배경색과 짝수단의 배경색을 서로 다르게 처리하시오<br/>
	출력 결과는 div에 출력하고 길이가 정해진 길이보다 길어지면 div에 스크롤바를 표시하시오<br/>
	</p>
	
	<div id='result'>
	</div>
	<script>
		
		let dan = 0;
		let str = '';
		let r = document.getElementById('result');
		for(dan=2 ; dan<10 ; dan++){
			str+='<div>';
			for(i=1 ; i<10 ; i++){
				str += dan + "*" + i + "=" + (dan*i) +'<br/>';
			}
			str+='</div>';
		}
		r.innerHTML = str;
		
	</script>

</body>
</html>