<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id='main'>
		<h3>게시물 작성</h3>
		<form id='frm' name='frm' method='post' enctype="multipart/form-data">
			<label>작성자</label><br/>
			<input type='text' name='id' value='hong'/><br/>
			
			<label>제목</label><br/>
			<input type='text' name='subject' value='받아랏!!!'/><br/>
			<textarea rows="10" cols="50" name='content'>수리산 비기 벽력일섬!!</textarea><br/>
			
			<label>암호</label><br/>
			<input type='hidden' name='pwd' value='1'/><br/>
			<label>파일 첨부</label><br/>
			<input type='file' name='att' multiple/><br/><br/>
			
			<input type='button' value='저장' id='btnRegister'/>
			<input type='button' value='취소' id='btnList'/><br/>
			<br/>
			<input type='text' name='nowPage' value='${param.nowPage }'/>
			<input type='text' name='findStr' value='${param.findStr }'/>
		</form>
	</div>
</body>
</html>