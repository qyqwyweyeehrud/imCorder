<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert_result</title>
</head>
<body>
	<h3>servlet에서 응답한 페이지</h3>
	<%
	String msg = (String)request.getAttribute("msg");//오브젝트타입이라 String으로 캐스팅
	String mId = (String)request.getAttribute("mId");
	out.print(msg);
	%>
	<h3><%=msg %></h3>
	<ul>
		<li><%=mId %></li>
	</ul>
</body>
</html>