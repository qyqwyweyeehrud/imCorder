<%@page import="com.mongodb.DBObject"%>
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
	<div id='main'>
		<h3>상세보기</h3>
		<%
			request.setCharacterEncoding("utf-8");
			String findStr = request.getParameter("findStr");
			String mId = request.getParameter("mId");
			MongoMember mm = new MongoMember();
			DBObject o = mm.view(mId);
		%>
		<form name='frm' method='post' id='frm'>
			<label>아이디</label>
			<input type='text' name='mId' value='<%=o.get("mId")%>'/></br>
			<label>이름</label>
			<input type='text' name='mName' value='<%=o.get("mName")%>'/></br>
			<label>등록일</label>
			<input type="date" name='rDate' value='<%=o.get("rDate")%>'/></br>
			<label>학년</label>
			<select name='grade'>
				<option value='1'>1학년</option>
				<option value='2'>2학년</option>
				<option value='3'>3학년</option>
				<option value='4'>4학년</option>
				<option value='5'>5학년</option>
				<option value='6'>6학년</option>
				<option value='7'>7학년</option>
				<option value='8'>8학년</option>
				<option value='9'>9학년</option>
				<option value='10'>10학년</option>
			</select></br>
			<input type="submit" name='btnModify' id='btnModify' value='수정'/>
			<input type="submit" name='btnModify' id='btnDelete' value='삭제'/>
			<input type="submit" name='btnSearch' id='btnSearch' value='목록'/>
			<input type="hidden" name='findStr' value='<%=findStr%>'/>
		</form>
	</div>

</body>
<script>
	frm.grade.selectedIndex = Number('<%=o.get("grade")%>')-1;
	$('#btnSearch').click(function(){
		$('#frm').attr('action','select.jsp');
	});
	$('#btnDelete').click(function(){
		let yn = confirm("정말?");
		if(yn){
			$('#frm').attr('action','delete_result.jsp');
		}
	});
	$('#btnModify').click(function(){
		$('#frm').attr('action','modify.jsp');
	});
	
</script>
</html>