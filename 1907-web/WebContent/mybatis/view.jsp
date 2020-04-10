<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div id='main'>
		<h3>자유 게시판 상세보기</h3>
		<form id='frm' name='frm' method='post' enctype="multipart/form-data">
			<label>작성자</label><br/>
			<input type='text' name='id' value='${vo.id }'/><br/>
			
			<label>제목</label><br/>
			<input type='text' name='subject' value='${vo.subject }'/><br/>
			<textarea rows="10" cols="50" name='content'>${vo.content }</textarea><br/>
			
			<label>파일 첨부</label><br/>
			<input type='file' name='att' multiple/><br/><br/>
			<div id ='attList'>
				<ul>
				<c:forEach var='i' items='${attList }'>
					<li><a href='upload/${i.sysFile }' download='${i.oriFile }' >${i.oriFile }</a></li>
				</c:forEach>
				</ul>
			</div>
			<input type='button' value='수정' id='btnModify'/>
			<input type='button' value='삭제' id='btnDelete'/><br/>
			<input type='button' value='댓글' id='btnRepl'/>
			<input type='button' value='취소' id='btnList'/><br/>
			
			<br/>
			<input type='text' name='nowPage' value='${param.nowPage }'/>
			<input type='text' name='findStr' value='${param.findStr }'/>
			<input type='text' name='serial' value='${vo.serial }'/>
		</form>
	</div>
