<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>post 방식으로 데이터 전송</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>데이터를 post 방식으로 데이터 전송</h3>
		<form name='frm' id='frm' method='post'>
			<input type='text' name='mid' value='hong'/>
			<input type='password' name='pwd' value='1234'/>
			<input type='hidden' name='page' value='10'/>
			<br/>
			<input type='radio' name='hobby' value='축구'>축구
			<input type='radio' name='hobby' value='야구' checked>야구
			<input type='radio' name='hobby' value='농구'>농구
			<br/>
			<input type='checkbox' name='mnt' value='백두산' checked>밷두산
			<input type='checkbox' name='mnt' value='국내산'>국내산
			<input type='checkbox' name='mnt' value='중국산' checked>중국산
			<br/>
			<select name='sel' multiple="multiple">
				<option value='한식' selected>한식</option>
				<option value='간식'>간식</option>
				<option value='김문식'>김문식</option>
				<option value='베이식'>베이식</option>
			</select>
			</p>
			<input type='button' value='전송' id='btn'/>
		</form>
		<div id='result'></div>
		
		<script>
			$('#btn').on('click',function(){
				let v = $('#frm').serialize();
				//console.log(v);
				let xhr= new XMLHttpRequest();
				xhr.open('POST','b2_post_result.jsp');
				xhr.setRequestHeader('Content-type','application/x-www-form-urlencoded;charset=utf-8');
				xhr.send(v);
				xhr.onreadystatechange = function(){
					if(xhr.status==200 && xhr.readyState==4){
						$('#result').html(xhr.responseText);
					}
				};
			});
		</script>
</body>
</html>