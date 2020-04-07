<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='./css/index_mybatis.css'/>
<script src='./mybatis/mybatis.js'></script>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String inc = "select.myba";
		if(request.getParameter("inc") !=null){
			inc = request.getParameter("inc");
		}
	%>
	<div id='main_f'>
		<div id='top'>
			<h3>mybatis + servlet + jtsl</h3>
		</div>
		<div id='middle'>
			<jsp:include page="<%=inc %>"></jsp:include>
		</div>
		<div id='foot'>
			1907<sup>TM</sup>
		</div>
	</div>
	
	
	<script>
		btnFunc();
	</script>
	
</body>
</html>