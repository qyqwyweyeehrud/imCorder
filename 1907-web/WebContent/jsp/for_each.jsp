<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="bean.MemberVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEach</title>
</head>
<body>
	<h3>forEach</h3>
	
	<h4>forEach를 사용한 구구단</h4>
	<c:set var='dan' value='5'></c:set> <!-- 스코프가 생략되면 페이지 스코프에 저장된다! -->
	<c:forEach var='i' begin='1' end='9' step='1'> <!-- var i= 1 ;i<=9 ;i++ -->
		<c:out value="${i }"></c:out>	<!-- console에 출력하는 문장은 c:out -->
		${dan }* ${i } = ${dan*i }
	</c:forEach>
	
	<h4>1~100까지의 홀수만 출력</h4>
	<c:forEach var='i' begin='1' end='100' step='2'>
		
			<c:out value="${i }"></c:out>
		
	</c:forEach>
	
	<h4>1~100까지의 수중 3또는 5의 배수를 출력</h4>
	<c:forEach var='i' begin='1' end='100' step='1'>
		<c:if test="${i%3==0 || i%5==0}">
			<c:out value="${i }"></c:out>
		</c:if>
	</c:forEach>
	
	<h4>Java Collection을 사용한 forEach</h4>
	<!-- 서버로부터 자료가 넘어왔다고 치자 -->
	<%
		List<String> list = new ArrayList<String>();
		list.add("김씨");list.add("이씨");list.add("홍씨");list.add("최씨");list.add("박씨");list.add("남씨");
		
		request.setAttribute("list", list);
	%>
	<!-- 향사왼 for문 -->
	<c:forEach var='item' items='${list }'> <!-- 이러면 list를 하나씩 가져와서 첫번째데이터가 첫번째 아이템에 탑재되는것이 김씨....~~~~~ -->
		<c:out value="${item }"></c:out>
	</c:forEach>
	<hr/>
	<c:forEach var='item' items='${list }' begin='1' end='4' step='1'><!-- 위의list의 index는 0베이스인데 begin을 1로 지정하니 처음과 끝이 출력이되지 않았다 -->
		<c:out value="${item }"></c:out>
	</c:forEach>
	
	<h4>forEach의 상태값</h4>
	<c:forEach var='item' items='${list }' varStatus='st'>
		<li> current : ${st.current } </li>
		<li> index : ${st.index }	</li>
		<li> count : ${st.count }	</li>
		<hr/>
	</c:forEach>
	
	<h4>MemberVo 타입의 데이터를 List에 저장한후 출력</h4>
	<%
	List<MemberVo> list2 = new ArrayList<MemberVo>();
	Date d = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	for(int i=0 ; i<10 ; i++){
		MemberVo vo = new MemberVo("a"+i,"b"+i,sdf.format(d),i,"e"+i);
		list2.add(vo);
	}
	request.setAttribute("list2", list2);
	%>
	<c:forEach var='item' items='${list2 }'>
		<fmt:parseDate var="temp" pattern="yyyy-MM-dd" value="${item.rdate }"></fmt:parseDate>
		<fmt:formatDate var="temp2" pattern="yyyy년MM월dd일" value="${temp }"></fmt:formatDate>
		<li>이름 : ${item.mid } 비밀번호 : ${item.pwd } 날짜 : ${temp2 } 학년 : ${item.grade } 이름: ${item.mName } </li>
		<hr/>
	</c:forEach>
	
</body>
</html>