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
		<h3>자유 게시판 상세보기</h3>
		<form id='frm' name='frm' method='post' enctype="multipart/form-data">
			<label>작성자</label><br/>
			<input type='text' name='id' value='hong'/><br/>
			
			<label>제목</label><br/>
			<input type='text' name='subject' value='받아랏!!!'/><br/>
			<textarea rows="10" cols="50" name='content'>수리산 비기 벽력일섬!!</textarea><br/>
			
			<label>암호</label><br/>
			<input type='password' name='pwd' value='1'/><br/>
			<label>파일 첨부</label><br/>
			<input type='file' name='att' multiple/><br/><br/>
			<div id ='attList'>
				<ul>
					<li><a href='abc.png' download='abc.png' >abc.png</a></li>
					<li><a href='abc.png' download='abc.png' >abc.png</a></li>
					<li><a href='abc.png' download='abc.png' >abc.png</a></li>
					<li><a href='abc.png' download='abc.png' >abc.png</a></li>
				</ul>
			</div>
			<input type='button' value='수정' id='btnModify'/>
			<input type='button' value='삭제' id='btnDelete'/><br/>
			<input type='button' value='댓글' id='btnRepl'/>
			<input type='button' value='취소' id='btnList'/><br/>
			
			<br/>
			<input type='text' name='nowPage' value='${param.nowPage }'/>
			<input type='text' name='findStr' value='${param.findStr }'/>
			<input type='text' name='serial' value='1'/>
		</form>
	</div>
</body>
</html>