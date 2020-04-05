<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>회원 조회</h3>
	<div id='main'>
		<form name='frm' id='frm' method='post'>
			<input type='button' name='btnInsert' id='btnInsert' value='회원가입'/>
			<input type='text' name='findStr' id='findStr' value='${param.findStr }'/>
			<input type='button' name='btnSearch' id='btnSearch' value='검색'/>
			<input type='text' name='nowPage' id='nowPage' value='${empty param.nowPage? 1:param.nowPage }'/>
			<input type='hidden' name='mId' id='mId'/>
		</form>
	</div>
	<div id='title'>
		<span>아이디</span>
		<span>패스워드</span>
		<span>학년</span>
		<span>이름</span>
		<span>등록일</span>
	</div>
	<div id='result;'>
		<div id='item' onclick="view()">
			<span>qyqwyweye</span>
			<span>1234</span>
			<span>2</span>
			<span>도경</span>
			<span>2020-20-20</span>
		</div>
		
		<c:forEach var="vo" items="${list }">
			<div id='item' onclick="view('${vo.mId}')">
				<span class='mId'>${vo.mId }</span>
				<span class='mName'>${vo.mName }</span>
				<span class='rDate'>${vo.rDate }</span>
				<span class='grade'>${vo.grade }</span>
			</div>
		</c:forEach>
	
	</div>
	
	
	<div id ='paging'>
		<c:if test="${p.nowPage > p.blockSize }">
			<input type='button' value='처음' onclick='goPage(1)'/>
		</c:if>
		
		<c:forEach var='i' begin='${p.startPage }' end='${p.endPage }'>
			<input type='button' id='btn' value='${i }' onclick='goPage(${i})'/>
		</c:forEach>
		
		<c:if test="${p.nowPage <p.totPage }">
			<input type='button' value='다음' onclick='goPage(${p.nowPage+1})'/>
		</c:if>
	</div>
	
	<script>
		//데이터 흐름select = servlet = dao = servlet = select
		$('#btnInsert').click(function(){
			$('#frm').attr('action','insert.mm').submit();//엠머서블렛을 호출해야되구나! post타입이기때문에 doPost가 실행되겠구나!
		});
		$('#btnSearch').click(function(){
			$('#frm').attr('action','select.mm').submit();
		});
		let view = function(mId){
			$('#mId').val(mId);
			$('#frm').attr('action','view.mm').submit();
		}
		let goPage = function(nowPage){
			$('#nowPage').val(nowPage);
			$('#frm').attr('action','select.mm').submit();
		}
		
		
	</script>
</body>
</html>