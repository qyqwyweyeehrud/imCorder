<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel ='stylesheet' type='text/css' href='../lib/colorbox.css'/>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='../lib/jquery.colorbox-min.js'></script>
</head>
<body>
	<h3>외부에 test.html 파일을 생성하여</h3>
	<a id='colorbox' href='#dialog'>Dialog with</a>
	
	<script>
		$('#colorbox').colorbox({
			href:'../test.jsp',
			width:450,
			height:400,
			opacity:0.3
		});
	</script>

</body>
</html>