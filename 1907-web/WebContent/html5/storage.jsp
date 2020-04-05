<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>storage</title>
</head>
<body>
	<h3>storage</h3>
	<form name='frm'>
		<output name='mId'></output>님 방가...<br/>
		<input type='button' value='SAVE' name='btnSave'/>
		<input type='button' value='LOAD' name='btnLoad'/>
	</form>
	<script>
		//localStorage, sessionStorage에 값을 저장한 후, 브라우저를 종료한 후 그 결과를 조회
		frm.mId.value = localStorage.getItem('mId');
		frm.btnSave.onclick = function(){
			localStorage.setItem('mId','hong');
			sessionStorage.setItem('mId','kim');//세션은 브라우저끄면 세션이 사라지기때문에 값이사라지고 로컬은 브라우저를 꺼로 값이 살아있다
		}
		frm.btnLoad.onclick = function(){
			let localId = localStorage.getItem('mId');
			let sessionId = sessionStorage.getItem('mId');
			console.log('localStorage',localId);
			console.log('sessionStorage',sessionId);
		}
	</script>
</body>
</html>