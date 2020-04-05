<%@page import="java.text.SimpleDateFormat"%>
<%@page import="bean1.MemberVo"%>
<%@page import="bean1.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert_r_dao</title>
</head>
<body>
	<h3>dao로 요청처리</h3>
	<%	
	request.setCharacterEncoding("utf-8");
	String mId = request.getParameter("mId");
	String mName = request.getParameter("mName");
	String rDate = request.getParameter("rDate");
	String grade = request.getParameter("grade");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	MemberDao dao = new MemberDao();
	MemberVo vo = new MemberVo(mId,mName,sdf.parse(rDate),Integer.parseInt(grade));
	String msg = dao.insert(vo);
	%>
	<h4>경과 : <%=msg %></h4>
	<ul>
		<li> mId = <%=vo.getmId() %></li>
		<li> mName = <%=vo.getmName() %></li>
		<li> rDate = <%=vo.getrDate() %></li>
		<li> grade = <%=vo.getGrade() %></li>
	</ul>
</body>
</html>