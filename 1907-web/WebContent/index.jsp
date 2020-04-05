<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1907-web</title>
<link rel='stylesheet' type='text/css' href='./css/index.css'/>
</head>
<body>
<%
	String inc = "./html5/index_html.jsp";
	if(request.getParameter("inc")!=null){//get type이나 form안에 inc라는 태그가 들어오면된다
		//index.jsp?inc=abc.jsp로 들어온걸로치면
		//아래의 inc에 abc.jsp가 대입되는것이다
		inc = request.getParameter("inc");
	}
	String inc2 ="./html5/canvas_shadow.jsp";
	if(request.getParameter("inc2")!=null){
		inc2 = request.getParameter("inc2");
	}
%>
<div id='main'>
	<!-- top.jsp -->
	<%@include file="top.jsp" %><!-- 정적 파일이며 , 페이지를 변수로 사용할수 없다 , code가 먼저 로딩이되고 전체가 컴파일이되는것 -->
	
	<div id='center'> <!-- -------------------------------------------------가운데 -->
		<div id='submenu'><!-- 액션태그를사용한 동적 삽입 -->
			<jsp:include page="<%=inc %>"/>
		</div>
		<div id='maincontent'>
			<jsp:include page="<%=inc2 %>"/>
		</div>
		<aside id='aside'>
			ASIDE
		</aside>
	</div> <!-- ----------------------------------------------가운데끝 -->
	<!-- bottom.jsp -->
	<%@include file="bottom.jsp" %><!-- 정적 파일이며 , 페이지를 변수로 사용할수 없다 , code가 먼저 로딩이되고 전체가 컴파일이되는것 -->
	
</div>	

</body>
</html>