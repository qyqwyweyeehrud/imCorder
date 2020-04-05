<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_filter_3</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>위치필더 선택자 | 함수필더 선택자</h3>
	<fieldset>
		<legend>위치필터</legend>
		<li>요소:odd => 요소들 중에서 홀수 번째</li>
		<li>요소:even => 요소들 중에서 짝수 번째</li>
		<li>요소:first => 요소들 중에서 첫번째</li>
		<li>요소:last => 요소들 중에서 마지막번째</li>
	</fieldset>
	<fieldset>
		<legend>함수필터</legend>
		<li>요소:contains(문자영) => 문자열이 포함된 요소</li>
		<li>요소:eq(n) => n번째 요소</li>
		<li>요소:gt(n) => n보다 큰 요소</li>
		<li>요소:lt(n) => n보다 작은 요소</li>
		<li>요소:has(item) => item을  갖고 있는 요소</li>
		<li>요소:not(item) => item을 갖고 있지 않는 요소</li>
		<li>요소:nth-child(수열) => 수영에 해당하는 요소</li>
	</fieldset>
	
	<ol id='mnt'>
		<li>백두산</li>
		<li>한라산</li>
		<li>금강산</li>
		<li>관악산</li>
		<li>수리산</li>
		<li>치악산</li>
		<li>두타산</li>
		<li>내장산</li>
		<li>중국산</li>
		<li>국내산</li>
		
	</ol>
	<script>
		$(document).ready(function(){//이 레디는 바디에 있기 때문에'굳이' 안써도 되지만 헤드에 있다면 써줘야한다
			// odd
			$('#mnt>li:odd').css('color','#f00');//index번호가 0부터 시작하기때문에 index번호를 가지고 얘가 구분하기에 index번호1인 한라산부터 적용된다
			// first
			$('#mnt>li:first').css('border-top','1px solid #f00');
			// last
			$('#mnt>li:last').css('border-bottom' , '1px solid #f00');
			
			// lt(n)  / 5보다 작은 위치의 요소의 바탕행
			$('#mnt>li:lt(5)').css('background-color','#eee');
			// nth-child(n) / 3의 배수 위치의 border
			$('#mnt>li:nth-child(3n)').css('border-bottom','1px solid #333');
			
		});
	</script>
</body>
</html>