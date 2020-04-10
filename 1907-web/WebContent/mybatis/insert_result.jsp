<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id='main'>
	<p>${msg }</p>
	<form name='frm' method='post'>
		<input type='text' name='findStr' value='${p.findStr }'/>
		<input type='text' name='nowPage' value='${p.nowPage }'/>
		<input type='button' value='목록으로' id='btnList'/>
	</form>
</div>