<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IF_3</title>
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
	form>.ki,form>.mom{
		font-size:2em;
		background-color:#eee;
		padding:5px;
		border:1px solid #000;
	}
	
</style>
</head>
<body>
	<p id='info'>
		키와 몸무게를 입력받아 키가 120 미만 이거나 몸무게가 100kg 이상이면 라디오 버튼중 탑승불가 버튼을 아니면 탑승가능 버튼이 체크되도록 프로그램하시오
	</p>
	<form name='frm'>
		<label class='ki'>HEIGHT</label>
		<input type='text' size='7' name='height'/>
		<label class='mom'>WEIGHT</label>
		<input type='text' size='7' name='weight'/>
		<input type='button' name='btn' value='확인''/>
		<p><h4>결과</h4></p>
		<label><input type='radio' name='chk'>탑승가능</label>
		<label><input type='radio' name='chk'>탑승불가</label>
	</form>
	<script>
		frm.btn.onclick = function(){
			let h = Number(frm.height.value);
			let w = Number(frm.weight.value);
			if(h<120 || w>=100){
				frm.chk[1].checked=true;
			}else{
				frm.chk[2].checked=true;
			}
		}
	</script>
	

</body>
</html>