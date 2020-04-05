<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='../lib/jquery-3.4.1.js'></script>
</head>
<body>
	<h3>option을 선택한후 5초가 지나면 선택된 항목이 alert창에 나타나로옥하라</h3>
	<select size='7'>
		<option>Apple</option>
		<option>Bag</option>
		<option>Dog</option>
		<option>Cat</option>
		<option>Elephant</option>
	</select>
	
	<script>
		$(document).ready(function(){
			
			setTimeout(function(){//5초 후에 1번 실행해라
				var value = $('select>option:selected').val();
				alert(value);
			},5000);
		});
	</script>
</body>
</html>