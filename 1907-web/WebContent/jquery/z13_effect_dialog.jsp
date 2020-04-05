<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>effect_dialog</title>
<link rel ='stylesheet' type='text/css' href='../lib/colorbox.css'/>
<script src='../lib/jquery-3.4.1.js'></script>
<script src='../lib/jquery.colorbox-min.js'></script>
</head>
<body>
	<h1>jQueary Colorbox</h1>
	<a id='colorbox' href='#dialog'>Dialog with</a>
	
	<div id='dialogs' style='display:none;'>
		<div id='dialog'>
			<h1>ee</h1>
			<p>eee</p>
		</div>
	</div>
	<script>
		$('a').colorbox({
			inline: true,
			width:550
		});
	</script>

</body>
</html>