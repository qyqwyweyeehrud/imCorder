<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel ='stylesheet' type='text/css' href='../lib/colorbox.css'/>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='../lib/jquery.colorbox-min.js'></script>

<body>
	<h3>colorbox plug-in</h3>
	<a rel='abc' href='../image/a.jpg'>img1</a>
	<a rel='abc' href='../image/aa.jpg'>img2</a>
	<a rel='abc' href='../image/aaa.jpg'>img3</a>
	<a rel='abc' href='../image/aaaa.jpg'>img4</a>
	<a rel='abc' href='../image/aaaaa.jpg'>img5</a>
	
	<script>
		$('a').colorbox({
			opacity : 0.5
		});
		
	</script>

</body>
</html>