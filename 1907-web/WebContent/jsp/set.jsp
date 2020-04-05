<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set</title>
</head>
<body>
	<fieldset><legend>기본 set</legend>
	<c:set var="kor" value="90"/> <!-- 이아이들은 scope를 지정하지 않았기때문에 기본 값인 page scope에 저장이된다 -->
	<c:set var="eng">88</c:set>
	<c:set var='tot' value="${kor+eng }"/>
	<c:set var="avg">${tot/2 }</c:set>
	<ul>
		<li>kor : ${kor }</li>
		<li>eng : ${eng }</li>
		<li>tot : ${tot }</li>
		<li>avg : ${avg }</li>
	</ul>
	</fieldset>
	
	<fieldset><legend>html을 변수에담아서 출력해보자</legend>
		<%
		String html="<font color='red' size='6'>홍길동</font>";
		pageContext.setAttribute("abc", html);//request,session,application제외한 페이지 만큼은 페이지 콘덱스크안에 넣는다
		%>
		${abc } <!-- scope.abc 의 scope가 생략되면 page>request>session>application 순으로 변수를 찾는다 -->
		<c:remove var="abc"/>
		//remove : ${abc }
	</fieldset>
	
	<fieldset><legend>javaBean</legend>
		<jsp:useBean id="vo" class="bean.MemberVo" scope="page"></jsp:useBean> <!-- c:set var'vo' value=bean.MemberVo> -->
		<c:set target='${vo }' property="mid" value="hong gil dong"></c:set> <!-- property는 setter getter를 의미한다 //vo.setMid('홍')이랑 같다-->
		<c:set target='${vo }' property="pwd" value="1234"></c:set> <!-- vo.setPwd("1234")라고 쓴거랑 같은 개념이다 -->
		<ul>
			<li>mId : ${vo.mid }</li>
			<li>pwd : ${vo.pwd }</li>
		</ul>
	</fieldset>
	
</body>
</html>