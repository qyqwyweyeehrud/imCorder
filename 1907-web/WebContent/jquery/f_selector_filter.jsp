<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_filter</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3> 필더 사용하기</h3>
	<p id='info'>
		filter는 '요소:필더명' 을 사용하여 선택함
	</p>
	<form name='frm'>
		<input type='text' name='mid' value='hong'/>
		<input type='text' name='mName' value='홍길동'/>
		<input type='password' name='pwd' value='1234'/>
		<input type='button' name='btn' value='체크'/>
	</form>
	
	<script>
		$('input:text').css('color','#00f');
		//input[type=text] 로쓰나 똑같음
		$('input:password').css('color','#f00');
		$('input:button').css({//map구조로 사용가능
			'width':'200px',
			'height':'100px'
		});
	</script>

</body>
</html>