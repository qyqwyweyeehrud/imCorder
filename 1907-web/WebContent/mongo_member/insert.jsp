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
	if(findStr==null) findStr="";
%>
	<form id='frm' name='frm' method='post'><br/>
		<label>아이디</label>
		<input type='text' name='mId'/><br/>
		<label>이름</label>
		<input type='text' name='mName'/><br/>
		<label>등록일</label>
		<input type="date" name='rDate'/><br/>
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
		<input type="submit" name='btnSave' id='btnSave' value='저장'/>
		<input type="submit" name='btnSearch' id='btnSearch' value='목록'/>
		<input type="hidden" name='findStr' value='<%=findStr%>'/>
	</form>
	
	<script>
		frm.rDate.valueAsDate = new Date();
		$('#btnSave').click(function(){
			$('#frm').attr('action','insertR.mm').submit();
		});
		$('#btnSearch').click(function(){
			$('#frm').attr('action','select.mm').submit();
		});
		
	</script>
</body>
</html>