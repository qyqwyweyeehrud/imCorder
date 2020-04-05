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

	<form id='frm' name='frm' method='post'></br>
		<label>아이디</label>
		<input type='text' name='mId'/></br>
		<label>이름</label>
		<input type='text' name='mName'/></br>
		<label>등록일</label>
		<input type="date" name='rDate'/></br>
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
		<input type="button" name='btnJSP' id='btnJSP' value='등록(JSP)'/>
		<input type="button" name='btnDAO' id='btnDAO' value='등록(DAO)'/>
		<input type="button" name='btnBEAN' id='btnBEAN' value='등록(BEAN)'/>
		<input type="button" name='btnSERVLET' id='btnSERVLETxml' value='등록(SERVLETxml)'/>
		<input type="button" name='btnSERVLET' id='btnSERVLETanno' value='등록(SERVLETanno)'/>
		<input type="button" name='btnJSTL' id='btnJSTL' value='등록(JSTL)'/>
		
	</form>
	
	<script>
		frm.rDate.valueAsDate = new Date();
		$('#btnJSP').click(function(){
			$('#frm').attr('action','insert_r_jsp.jsp').submit();//페이지가 날라갓 것이고			
		});
		$('#btnDAO').click(function(){
			$('#frm').attr('action','insert_r_dao.jsp').submit();		
		});
		$('#btnBEAN').click(function(){
			$('#frm').attr('action','insert_r_bean.jsp').submit();	
		});
		$('#btnSERVLETxml').click(function(){
			$('#frm').attr('action','insert_r_servlet_xml.nhn').submit();	
		});
		$('#btnSERVLETanno').click(function(){
			$('#frm').attr('action','insert_r_servlet_anno.anno').submit();	
		});
		$('#btnJSTL').click(function(){
			$('#frm').attr('action','insert_r_jstl.do').submit();	
		});
	</script>
	
</body>
</html>