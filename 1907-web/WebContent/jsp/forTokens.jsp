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
	<h3>forTokens</h3>
	<!-- StringTokeniser 기능과 같다 -->
	<%
		String str = "asdf,asfwq,qwfqwr,qwt,f,asfq,gqe,q";
		pageContext.setAttribute("str", str);
	%>
	<c:forTokens items="${str }" delims="," var='v'> <!-- delims는 구분자이다 -->
		<li> ${v }
	</c:forTokens>
	<hr/>
	<c:forTokens items="${str }" delims="," var='v' begin='2' end='6' step='2'> <!-- delims는 구분자이다 -->
		<li> ${v }
	</c:forTokens>
	<hr/>
	<c:forTokens items="${str }" delims="," var='v' varStatus="st"> <!-- delims는 구분자이다 -->
		<li> ${v } | ${st.current} | ${st.index} | ${st.count}
	</c:forTokens>
</body>
</html>