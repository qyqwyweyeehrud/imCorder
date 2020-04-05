<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.mongodb.BasicDBObject"%>
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
	
		String msg="";
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String rDate = request.getParameter("rDate");
		String grade = request.getParameter("grade");
		String findStr = request.getParameter("findStr");
		if(findStr==null) findStr="";
		
		MongoMember mm = new MongoMember();
		BasicDBObject obj = new BasicDBObject();
	
		
		obj.put("mId",mId);
		obj.put("mName",mName);
		obj.put("rDate",rDate);
		obj.put("grade",grade);
		msg = mm.insert(obj);
	%>
	<span> <%=msg %> </span>
	<span>ID : <%=mId%> 님 저장완료</span>
	<span>이름 : <%=mName %></span>
	<span>등록일 : <%=rDate %></span>
	<span>학년 : <%=grade %></span>
	<form id='frm' name='frm' method='post'>
		<input type="submit" name='btnSearch' id='btnSearch' value='목록으로'/>
		<input type="hidden" name='findStr' id='findStr' value='<%=findStr%>'/>
	</form>
	
	<script>
		
		$('#btnSearch').click(function(){
			$('#frm').attr('action','select.jsp');
		});
		
	</script>
</body>
</html>