<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>expression 표현식</title>
</head>
<body>
	<h3>표현식</h3>
	<%
		int a = 10;
		int b = 20;
		int s = a + b;
		out.print("<ul>");
		out.print("<li>sum = "+s+"</li>");
		out.print("<li>a = "+a+"</li>");
		out.print("<li>b = "+b+"</li>");
		out.print("</ul>");
	%>
	<hr>
	<ul>
		<li> sum =<%=s%> </li>
		<li> a =<%=a%> </li>
		<li> b =<%=b%> </li>
	</ul>

</body>
</html>