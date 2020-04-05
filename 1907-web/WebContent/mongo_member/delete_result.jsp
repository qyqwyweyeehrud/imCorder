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
			MongoMember mm = new MongoMember();
			String msg = mm.delete(mId);
		%>
	<span> <%=msg %> </span>
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