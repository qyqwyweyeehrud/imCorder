<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" type="text/css" href="Insert.css">

</head>
<body>
	<div id='m_insert' class='m_insert'>
		<h3>회원 정보 입력</h3>
		<form id = 'frm'action="abc.jsp" name='m_form' method='' target=''>
			<label>I&nbsp;D:</label><br/>
				<input type='text' id='id' name='mId' value='hong' maxlength="10" size='12'/><br/>
			<label>PW:</label><br/>
				<input type='password' id='pw' name ='pwd' value='hong' maxlength="20" size='12'/><br/>
			<label>NAME:</label><br/>
				<input type='search' id='name' name='mName' size='15'/><br/>
			<label>Birth:</label><br/>
				<input type='date' id='date' name='birth' size='15'/><br/>
			<label>뒷자리 1자:</label><br/>
				<input type='text' id= '1' name='jumin' size='1' maxlength="1"/><br/>
			<label>성별:</label><br/>
				<label><input type='radio' id='gender1' name='gender' value='m'>남자</label>
				<label><input type='radio' id='gender2' name='gender' value='f'>여자</label><br/>
			<label>취미:</label><br/><br/>
				<label><input type='checkbox' id='hobby1' name='hobby' value='축구'>축구</label>
				<label><input type='checkbox' id='hobby2'  name='hobby' value='야구'>야구</label>
				<label><input type='checkbox' id='hobby3'  name='hobby' value='배구'>배구</label>
				<label><input type='checkbox' id='hobby4'  name='hobby' value='족구'>족구</label>
			<label>좋아하는색:</label><br/>
				<input type='color' id='mcolor' name='mcolor'><br/>
			<label>주량:</label><br/>
				<input type='range' min='0' max='20000' value='1000' step='1000'/><br/>
			<label>학년</label><br/>
				<select id='grade' name='grade'size='1'>
					<option value='1'>1학년</option>
					<option value='2'>2학년</option>
					<option value='3'>3학년</option>
					<option value='4'>4학년</option>
					<option value='5'>5학년</option>
					<option value='6'>6학년</option>
				</select><br/>
			<label>지원과정</label>
				<select id='subject' name='course'>
					<optgroup label="web">
						<option value='html5'>html5</option>
						<option value='css'>css</option>
						<option value='javascript'>javascript</option>
					</optgroup>
					<optgroup label="framework">
						<option value='ajax'>ajax</option>
						<option value='mybatis'>mybatis</option>
						<option value='node.js'>node.js</option>
						<option value='spring'>spring</option>
					</optgroup>
				</select>
		<div id ='pho'>
			<label>증명사진</label>
				<input type='file' id='photo'><br/>
				<img width='180px' height='200px' id='target' src='http://placehold.it/180X200'/><!-- 이미지크리만큼 설정해준다 -->
		</div>		
		<div id ='inf'>
			<label>간단한 자기소개</label><br/>
				<textarea rows='10' cols='60' name='info'></textarea><br/>
		</div>	
			
			
			
			
			
			
			
			<p/>
			<input type='reset' value='초기화'/>
			<input type='button' value='버튼''/>
			<input type='submit' value='전송'/>
			
		</form>
			<script>
				let btn = document.getElementById('photo');
				btn.onchange = function(event){
					let ele = event.srcElement;
					let url = ele.files[0];
					let reader = new FileReader();
					reader.readAsDataURL(url);
					
					reader.onload = function(ev){
						let img = new Image();
						img.src = ev.target.result;
						document.getElementById('target').src = img.src;
						
					}
				}
			</script>
	</div>
</body>
</html>