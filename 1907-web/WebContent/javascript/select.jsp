<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<style>
	.sel{
		margin:20px;
		width:200px;
		height:50px;
	}
	.cel{
		margin:20px;
		width:200px;
		height:150px;
	}
	#result{
		margin:20px;
		width:400px;
		height:300px;
		border:1px solid #000;
		padding:20px;
		box-sizing : border-box;
		box-shadow: 5px 5px 5px #444;
	}
	#btn{
		margin-left:100px;
	}
</style>
</head>
<body>
	<h3>select</h3>
	<form name='frm'>
		<h4>과정명을 하나만 선택</h4>
		<select name='course' size='1' class='sel'>
			<option value='프로그래밍 과정'>프로그래밍 과정</option>
			<option value='웹디자인 과정'>웹디자인 과정</option>
			<option value='스크립터 과정'>스크립터 과정</option>
			<option value='퍼블리셔 과정'>퍼블리셔 과정</option>
		</select>
		<h4>신청 과정을 한개이상 선택</h4>
		<select name='subject' size='5' multiple='multiple' class='cel'>
			<option value='java'>java</option>
			<option value='html5'>html5</option>
			<option value='css3'>css3</option>
			<option value='javacript'>javascript</option>
			<option value='jsp'>jsp</option>
			<option value='ajax'>ajax</option>
			<option value='jquery'>jquery</option>
			<option value='node.js'>nod.js</option>
			<option vlaue='spring'>spring</option>
		</select><br/>
		<input type='button' value='선택'' name='btn' id='btn'/>
		<div id='result'></div>
	</form>
	<script>
		let subject = [];
		let r = document.getElementById('result');
		let str ='';
		
		frm.btn.onclick = function(){
			str = '<li>선택한 과정명 : '+frm.course.value;
			
			subject.length=0;
			for(i=0 ; i<frm.subject.length ; i++){
				if(frm.subject[i].selected){//셀렉트 상자는 selected , 체크박스는 checked
					subject.push(frm.subject[i].value);
				}
			}
			
			str +='<li>과목명:'+subject;
			
			r.innerHTML = str;
			
		}
	</script>

</body>
</html>



















