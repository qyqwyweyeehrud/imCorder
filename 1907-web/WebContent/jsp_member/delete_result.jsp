<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form id='frm' name='frm' method='post'>
		<input type='button' name='btnSelect' id='btnSelect' value='목록'/>
		<input type='hidden' name='findStr' id='findStr' value='${param.findStr }'/>
		<input type='text' name='nowPage' id='nowPage' value='${param.nowPage }'/>
	</form>
	<h3>${msg }</h3>
	
	<script>
	$('#btnSelect').click(function(){
		$('#frm').attr('action','select.mm').submit();
	});
	</script>
</body>
</html>