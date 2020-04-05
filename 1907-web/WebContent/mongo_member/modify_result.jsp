<%@page import="com.mongodb.BasicDBObject"%>
<%@page import="com.mongodb.DBObject"%>
<%@page import="mongo.MongoDBConn"%>
<%@page import="mongo.MongoMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='./lib/jquery-3.4.1.js'></script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String findStr = request.getParameter("findStr");
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String rDate = request.getParameter("rDate");
		String grade = request.getParameter("grade");
		
		BasicDBObject obj1 = new BasicDBObject();
		obj1.put("mId",mId);
		
		BasicDBObject obj2 = new BasicDBObject();
		obj2.put("mName",mName);
		obj2.put("rDate",rDate);
		obj2.put("grade",grade);
		
		MongoMember mm = new MongoMember();
		String msg = mm.modify(obj1,obj2);
	%>
	<span> <%=msg%></span>
	<form id='frm' name='frm' method='post'>
		<input type='button' value='목록으로' name='btnSelect' id='btnSelect'/>
		<input type='hidden' name='findStr' id='findStr' value='<%=findStr%>'/>
	</form>
	
	<script>
		$('#btnSelect').click(function(){
			$('#frm').attr('action','select.jsp').submit();
		});
	</script>
</body>
</html>