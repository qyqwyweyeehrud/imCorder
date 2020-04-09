<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<h3> 자유게시판 답글 달기</h3>
	<form id='frm' name='frm' method='post' enctype="multipart/form-data">
			<label>작성자</label><br/>
			<input type='text' name='id' value='hong'/><br/>
			
			<label>제목</label><br/>
			<input type='text' name='subject' value='받아랏!!!'/><br/>
			<textarea rows="10" cols="50" name='content'>수리산 비기 벽력일섬!!</textarea><br/>
			
			<label>암호</label><br/>
			<input type='password' name='pwd' value='1'/><br/>
			<label>파일 첨부</label><br/>
			<input type='file' name='att' multiple id='btnatt'/><br/><br/>
			<fieldset id='attList'>
				<legend>첨부된 파일목록</legend>
			</fieldset>
			
			<input type='button' value='답변 저장' id='btnReplR'/>
			<input type='button' value='취소' id='btnList'/><br/>
			
			<br/>
			<input type='text' name='nowPage' value='${param.nowPage }'/>
			<input type='text' name='findStr' value='${param.findStr }'/>
			<input type='text' name='serial' value='1'/>
		</form>
