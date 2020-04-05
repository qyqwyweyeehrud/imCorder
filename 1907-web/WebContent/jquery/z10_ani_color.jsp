<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_color</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>
<style>
	.reverse{
		color:white;
		background-color:black;
	}
</style>
</head>
<body>
	<h3>문단에 hover되면 바탕생 변경</h3>
	<div>
		<h3>하하하</h3>
		<p>하하하하핳하하하하하하하하하하하하</p>
	</div>
	<div>
		<h3>하하하</h3>
		<p>하하하하핳하하하하하하하하하하하하</p>
	</div>
	<div>
		<h3>하하하</h3>
		<p>하하하하핳하하하하하하하하하하하하</p>
	</div>
	
	<script>
		$(document).ready(function(){
			$('div').hover(function(){
					$(this).addClass('reverse',1000);
			},function(){
				$(this).removeClass('reverse',1000);
			});
		});
	</script>
</body>
</html>