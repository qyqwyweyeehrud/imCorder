<%@page import="bean.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el</title>
</head>
<body>
<h3>el example</h3>
<ul>
	<li> \${10+5 } = ${10+5 }</li>
	<li> \${10>5 } = ${10>5 }</li>
	<li><%=10+5 %></li>
	<li><%=(10>5) %></li>
</ul>
	<%
	MemberVo vo = new MemberVo();
	vo.setMid("hong");
	vo.setPwd("1234");
	%>
	<ul>
		<li><%=vo.getMid() %></li>
		<li><%=vo.getPwd() %></li>
	</ul>
	<%
	request.setAttribute("vo", vo);
	%>
	<ul>
		<li>${vo }</li>
		<li>${vo.mid }</li>
		<li>${vo.pwd }</li>
	</ul>
</body>
</html>