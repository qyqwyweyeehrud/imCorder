<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>radio</title>
<style>
	#result{
		border:1px solid #ff0000;
		padding:20px;
		box-size:border-box;
		width:500px;
		height:500px;
	}
</style>
</head>
<body>
	<h3>radio</h3>
	<form name='frm'>
		<h3>가고싶은산</h3>
		<label><input type='radio' name='mnt' value='백두마운틴'>백두마운틴</label>
		<label><input type='radio' name='mnt' value='한라마운틴'>한라마운틴</label>
		<label><input type='radio' name='mnt' value='금강마운틴'>금강마운틴</label>
		<label><input type='radio' name='mnt' value='설악마운틴'>설악마운틴</label>
		<label><input type='radio' name='mnt' value='수리마운틴'>수리마운틴</label>
		<h3>살고싶은 지역</h3>
		<label><input type='radio' name='city' value='강원씨리'>강원씨리</label>
		<label><input type='radio' name='city' value='경상씨리'>경상씨리</label>
		<label><input type='radio' name='city' value='즌라씨리'>즌라씨리</label>
		<label><input type='radio' name='city' value='부산씨리'>부산씨리</label>
		<label><input type='radio' name='city' value='써울씨리'>써울씨리</label>
		<h3>가봣던 나라</h3>
		<label><input type='radio' name='cty' value='어메리카'>어메리카</label>
		<label><input type='radio' name='cty' value='재팬'>재팬</label>
		<label><input type='radio' name='cty' value='차이나'>차이나</label>
		<label><input type='radio' name='cty' value='보라카이'>보라카이</label>
		<label><input type='radio' name='cty' value='빠리'>빠리</label>
		<p/>
		<input type='button' name='btn' value='결정'/>
	</form>
	
	<div id='result'></div>
	
	<script>
		let str='';
		let r = document.getElementById('result');
		frm.btn.onclick = function(){
			/*산의 선택 여부 체크*/
			let mntFlag = false;
			for(i=0 ; i<frm.mnt.length ; i++){
				if(frm.mnt[i].checked){
					str = '<li>선택한 산의 이름:' + frm.mnt[i].value;
					mntFlag=true;
				}
			}
			if(mntFlag==false){
				alert('가고싶은 산을 선택하세요');
				return;
				
			}
			/*살고싶은 지역 선택 여부*/
			mntFlag=false;
			for(i=0;i<frm.city.length ; i++){
				if(frm.city[i].checked){
					str += '<li>선택한 도시의 이름: '+frm.city[i].value;
					mntFlag=true;
				}
			}
			if(mntFlag==false){
				alert('가고싶은 도시를 선택하세요');
				return;
			}
			/*가봣던 도시 선택 여부*/
			mntFlag=false;
			for(i=0;i<frm.cty.length ; i++){
				if(frm.cty[i].checked){
					str += '<li>선택한 나라 이름:' +frm.cty[i].value;
					mntFlag=true;
				}
			}
			if(mntFlag==false){
				alert('가봤던 나라를 선택해주세요');
				return;
			}
			r.innerHTML = str;
		}
		/*
		k=function a(){//k라고하는 변수가 사용될때만 함수가 만들어진다
			alert('OK');
		}
		*/
	</script>

</body>
</html>