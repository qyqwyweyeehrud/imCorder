<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='./mybatis/mybatis.js'></script>
</head>
<body>
	<div id='main'>
		<h3>자유 게시판</h3>
		<form name='frm' id='frm_select' method='post'>
			<input type="button" value='입력' id='btnInsert'/>
			<input type='text' name="findStr" value='${param.findStr }'/>
			<input type="button" value='검색' id='btnFind'/>
			
			<input type='hidden' name='nowPage' value='${empty param.nowPage?'1':param.nowPage}'/>
			<input type='hidden' name='serial'/>
		</form>
		
		<div id='title'>
				<span class='no'>순번</span>
				<span class='subject'>과목</span>
				<span class='id'>작성자</span>
				<span class='mDate'>작성일 </span>
				<span class='hit'>조회수</span>
		</div>
			<c:forEach var="vo" items="${list}">
				<div class='row' onclick="view(${vo.serial})">
					<span id='no'>${vo.serial}</span>
					<span id='subject'>${vo.subject}</span>
					<span id='id'>${vo.id}</span>
					<span id='mDate'>${vo.mDate} </span>
					<span id='hit'>${vo.hit }</span>
				</div>
			</c:forEach>
			
			
			<div id='page'>
				<c:if test="${p.startPage > p.blockSize }">
					<input type='button' value='이전'  onclick='go(${p.startPage-1})'/>
				</c:if>
				<c:forEach var='i' begin='${p.startPage }' end='${p.endPage }'>
					<input type='button' value='${i }' onclick='go(${i})' class="${(param.nowPage==i)? 'here':'' }"/>
				</c:forEach>
				<c:if test="${p.totPage > p.endPage }">
					<input type='button' value='다음' onclick='go(${p.endPage+1})'/>
				</c:if>
			
		</div>
	</div>	
</body>
</html>