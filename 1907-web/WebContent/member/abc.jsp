<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<span>폼 태그의 값들을 전달 받음..</span>
	<% //스클립들릿(java code)
	String mId = request.getParameter("mId");//네임태그가 mId라는 놈의 밸류값이 넘어옴
	out.print(mId);
	%>
</body>
</html>