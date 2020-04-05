<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>array_2</title>
<style>
	#result li{
		list-style: none;
	}
	#info{
		padding:10px;
		
		border-bottom:1px solid #aaa;
		margin:auto;
		margin-bottom:10px;
		width:500px;
		height:70px;
		box-sizing: border-box;
		
		text-align:center;
		border-radius: 10px;
		font-size:0.8em;
	}
	#result{
		padding:20px;
		border-top:1px solid #aaa;
		border-bottom:1px solid #aaa;
		margin:auto;
		width:200px;
		height:190px;
		box-sizing: border-box;
		
		text-align:center;
		border-radius: 10px;
		font-size:0.8em;
	}
	#fr{
		padding:25px;
		border-top:1px solid #aaa;
		border-bottom:1px solid #aaa;
		margin:auto;
		margin-bottom:20px;
		width:200px;
		height:280px;
		box-sizing: border-box;
		
		text-align:center;
		border-radius: 10px;
	}
	input[type=text]{
		text-align:center;
		font-size:0.8em;
		font-color:#aaa;
		width:130px;
		height:30px;
		border: 1px solid #ddd;
		border-radius:5px;
	}
	label{
		font-size:0.6em;
		font-style: inherit;
	}
	input[type=button]{
		padding:8px;
		margin-top:15px;
		border: 1px solid #888;
		background-color:#fff;
		border-radius: 3px;
		background-color:#c54242;
		color:#fff;
		font-size:0.7em;
	}
	
	
</style>
</head>
<body>
	<h3>array_2</h3>
	<p id = 'info'>
	폼을 사용하여 아이디,성명,국어,영어점수를 입력받아 총점과 평균을 계산하여 하나의 배열로 저장하시오
	[
		{'id':'park','name':'박원기','kor':90 , 'eng':80 , 'tot':170 , 'avg':85},
		{'id':'kim','name':'김도경','kor':90 , 'eng':80 , 'tot':170 , 'avg':85}
	]
	</p>
	<div id ='fr'>
		<form name='frm'>
			<label>아이디</label>
			<input type='text' name='id' value='ehrud'/><br/>
			<label>성명</label>
			<input type='text' name='irum' value='김도경'/><br/>
			<label>국어 점수</label>
			<input type='text' name='kor' value='30''/><br/>
			<label>영어 점수</label>
			<input type='text' name='eng' value='40''/><br/>
			<input type='button' name='btn' value='저장'/><br/>
			
		</form>
	</div>
	<div id='result'></div>
	
	<script>
		let cnt = 0;
		let r = document.getElementById('result');
		let d = [];
		let str='';
		
		frm.btn.onclick = function(){
			r.innerHTML = '';
				
			let id = frm.id.value;
			let irum = frm.irum.value;
			let kor = Number(frm.kor.value);
			let eng = Number(frm.eng.value);
			let tot = kor +eng;
			let avg = tot/2;
			
			let data = {"id":id , "name":irum , "kor":kor , "eng":eng , "tot":tot , "avg":avg}
			
			d.push( data);
			console.log(d);
			str = '<li>아이디 : '+d[cnt].id +'<li>이름:' + d[cnt].name +'<li>국어 : ' + d[cnt].kor + '<li>영어 : ' + d[cnt].eng + '<li>총점 : '+ d[cnt].tot + '<li>평균 : '+d[cnt].avg +'<br/>'+'<li>d배열의'+cnt+'번째에 저장이 완료 되었습니다';
			r.innerHTML = str;
			cnt++
					
				
			
		}
	</script>
</body>
</html>