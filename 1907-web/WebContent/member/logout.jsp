<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- session영역의 값을 제거 -->
	<%
		session.removeAttribute("mid");
	%>
	<script>
		alert("빠이");
		location.href='../index.jsp';
	</script>
</body>
</html>