<%@page import="bean1.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="vo" class="bean1.MemberVo2" scope="page"/><!-- MemberVo2 vo = new MemberVo2() 와 같은 코드이다 -->
<jsp:setProperty name="vo" property="*"/> <!-- name은 이름 ,property는 모든setter를 불러탈라이거다 requset.getParameter도 해준다 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert_r_bean</title>
</head>
<body>
	<h3>bean으로 요청 처리하기</h3>
	<%
		MemberDao dao = new MemberDao();
		String msg = dao.insert2(vo);
	%>
	<%=msg %>;
</body>
</html>