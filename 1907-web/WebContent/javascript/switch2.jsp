<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>switch2</title>
<style>
	#result{
		border:1px solid #000;
		height:300px;
		width:300px;
	}
</style>
</head>
<body>
	<p id='info'>
		성적을 입력받아 학점을 구하여 성적과 학점을  div에 출력하시오
	</p>
	<form name='frm'>
		<label>성적</label>
		<input type='text' name='score' value='80'/>
		<input type='button' name='btn' value='학점구하기'/>
		
	</form>
	<div id='result'>
	</div>
	
	<script>
		frm.btn.onclick = function(){
			let r = document.getElementById('result');
			let s = Number(frm.score.value);
			switch(true){
				case s>=90:
					r.innerHTML = '<li>학점은 A입니다';
					break;
				case s>=80:
					r.innerHTML = '<li>학점은 B입니다';
					break;
				case s>=70:
					r.innerHTML = '<li>학점은 C입니다';
					break;
				case s>=60:
					r.innerHTML = '<li>학점은 D입니다';
					break;
				default:
					r.innerHTML = '<li>학점은 F입니다';
					break;
			}
			
			let color = (s>=60)? '#aaaaff':'#ffaaaa';
			r.style.backgroundColor = color;
		}
	</script>

</body>
</html>