<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if_form</title>
<script src = './lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>if(form)</h3>
	<form name='frm' id='frm' method='post'>
		<label>성명</label>
		<input type='text' name='mName' value='hong'/><br/>
		<label>성적</label>
		<input type='number' name='score' value='80'/><br/>
		<input type='button' value='RUN' id='btnRUN'/>
	</form>
	
	<script>
		$('#btnRUN').click(function(){
			$('#frm').attr('action','index.jsp?inc=./jsp/index.jsp&inc2=./jsp/if_form_result.jsp').submit();
		});
	</script>
</body>
</html>