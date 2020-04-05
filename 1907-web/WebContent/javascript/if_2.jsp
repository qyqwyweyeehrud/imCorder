<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IF_2</title>
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
</style>
</head>
<body>
	<h3>IF_2</h3>
	<p id='info'>
		정수 하나를 입력받아 90이상이면 '전액 장학생' 70이상이면 '반액 장학생' 70미만이면 '전액 납부' 가 있는라디오 버튼의 상태값을 변경하시오.
	</p>
	<form name='frm'>
		<label>정수</label>
		<input type='search' name='su' value='90'/>
		<input type='button' name='btn' value='RUN'/>
		<hr/>
		<label><input type='radio' name='check' value='전액 장학생'>전액장학생</label>
		<label><input type='radio' name='check' value='반액 장학생'>반액장학생</label>
		<label><input type='radio' name='check' value='전액 납부생'>전액납부생</label>
	</form>
	<script>
		frm.btn.onclick = function(){
			let su = Number(frm.su.value);
			if(su>=90){
				frm.check[0].checked=true;
			}else if(su>=70&&su<90){
				frm.check[1].checked=true;
			}else{
				frm.check[2].checked=true;
			}
		}
	</script>
</body>
</html>