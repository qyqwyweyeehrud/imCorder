<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>게시판 수정</h3>
	<form name='brd'>
		<label>순번</label>
		<input type='text' name='serial' readonly/><br/>
		<label>작성자</label>
		<input type='text' name='mName' readonly/><br/>
		<label>제목</label>
		<input type='text' name='subject'/><br/>
		<textarea rows='10' cols='70' name='content'></textarea><br/>
		<input type='button' name='btnModify' value='수정하기'/>
		<input type='button' name='btnSelect' value='목록으로'/>
	</form>

</body>
</html>