<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view</title>
</head>
<body>	
	<h3>상세보기</h3>
	<form name='brd'>
		<label>순번</label>
		<input type='text' name='serial' readonly/>
		<label>작성자</label>
		<input type='text' name='mName' readonly/><br/>
		<label>제목</label>
		<input type='text' name='subject' readonly/><br/>
		<div id='content'></div><br/>
		<input type='button' name='btnModify' value='수정'/>
		<input type='button' name='btnDelete' value='삭제'/>
		<input type='button' name='btnSelect' value='목록'/>
	</form>

</body>
</html>