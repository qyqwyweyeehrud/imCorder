<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>number</title>
<style>
	form[name=frm]{
		psition:relative;
	}
	input[type=button]{
		height:46px;
		position:absolute;
		left:210px;
		top:64px;
	}
</style>
</head>
<body>
	<h3>Number,parseInt,parseFloat</h3>
	<form name='frm'>
		<label>성명</label>
		<input type='text' name='irum' value='혹시'/>
		<br/>
		<label>성적</label>
		<input type='text' name='score' value='50'/>
		<br/>
		<input type='button' value='CHECK' name='btn'/>
		<br/>
		<textarea rows='10' cols='50' name='result'></textarea>
	</form>
	<script>
		frm.btn.onclick = function(){
			frm.result.value='';
			let flag = false;
			let n = frm.irum.value;
			let s = frm.score.value;
			//이름에 숫자가 있는지를 판별
			for(i=0;i<n.length ;i++){
				var c = n.charAt(i);
				if(Number(c)){
					flag = true;
					break;
				}
			}
			if(flag){
				frm.result.value='이름에 숫자가 있으면 안됨!'
				frm.irum.focus();
				frm.irum.select();
			}
			
			//성적에 문자가 있는지 판별
			if(!Number(s)){
				frm.result.value='성적에 문자가 포함되어있으면 안됨!'
				frm.score.focus();
				frm.score.select();
				flag=true;
			}
			if(!flag){
				frm.result.value = `성명: \${n} \n성적: \${s}`;
			}
		}
		
	</script>
</body>
</html>