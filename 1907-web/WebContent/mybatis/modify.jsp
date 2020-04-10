<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




	<h3>게시물 수정</h3>
	<form id='frm' name='frm' method='post' enctype="multipart/form-data">
			<label>작성자</label><br/>
			<input type='text' name='id' value='${vo.id }'/><br/>
			
			<label>제목</label><br/>
			<input type='text' name='subject' value='${vo.subject }'/><br/>
			<textarea rows="10" cols="50" name='content'>${vo.content }</textarea><br/>
			
			<label>파일 첨부</label><br/>
			<input type='file' name='att' multiple id='btnatt'/><br/><br/>
			
			<fieldset id='attList'>
				<legend>첨부할 파일목록</legend>
			</fieldset>
			<fieldset id='attList'>
				<legend>첨부된 파일목록</legend>
				<c:forEach var='i' items='${attList }'>
					<div>
						<label>${i.oriFile }</label><input type='checkbox' name='delFile' value='${i.sysFile }' onclick='delCheck(this)'/>
					</div>
				
				</c:forEach>
			</fieldset>
			
			<input type='button' value='저장' id='btnUpdate'/>
			<input type='button' value='취소' id='btnList'/><br/>
			
			<br/>
			<input type='text' name='nowPage' value='${param.nowPage }'/>
			<input type='text' name='findStr' value='${param.findStr }'/>
			<input type='text' name='serial' value='${vo.serial }'/>
			<input type='text' name='pwd'/><br/>
	</form>