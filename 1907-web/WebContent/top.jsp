<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src='./lib/jquery-3.4.1.js'></script>
</head>
<body>
	<div id ='Login'>
	<% if(session.getAttribute("mid")==null){ %>
		<input type='button' value='로그인' id='btnLogin'/>
	<%}else{ %>
		<output>[<%=session.getAttribute("mid") %> 씨 방가방가!]</output>
		<input type='button' value='로그아웃' id='btnLogout'/>
	<%} %>
	</div>
	<header id='header'> <!-- ----------------------------------------------헤더 -->
		<img src='./image/google.png' id='google'/>
	</header><!-- ---------------------------------------------헤더끝 -->
	<nav id='nav'> <!-- 메뉴 --><!-- ------------------------------------------------메뉴 -->
		<ul>
			<li><a href='index.jsp?inc=./html5/index_html.jsp&inc2=./html5/gradient.jsp'>html</a></li><!--동적삽입을 할것임 / 페이지를 변수에 담아서 파라메터로 넘기면 메인페이지에서 파라메터로받아서 -->
			<li><a href='index.jsp?inc=./css/index_css.jsp&inc2=./css/csstest2.jsp'>css</a></li>
			<li><a href='index.jsp?inc=./ajax/index_ajax.jsp&inc2=./ajax/a1_xhr_test.jsp'>ajax</a></li>
			<li><a href='index.jsp?inc=./ajax_in_jquery/index_ajax_in_jquery.jsp&inc2=./ajax_in_jquery/member_select.jsp'>ajax_in_jquery</a></li>
			<li><a href='index.jsp?inc=./jquery/index_jquery.jsp&inc2=./jquery/a_cdnTest.jsp'>jquery</a></li>
			<li><a href='index.jsp?inc=./nodejs/http/index_nodejs.jsp&inc2=./nodejs/http/select.ejs'>nodejs</a></li>
			<li><a href='index.jsp?inc=./mongo_member/index_mongo_member.jsp&inc2=./mongo_member/select.jsp'>mongo_member</a></li>
			<li><a href='index.jsp?inc=./javascript/index_javascript.jsp&inc2=./javascript/array_1.jsp'>javascript</a></li>
			<li><a href='index.jsp?inc=./jsp/index.jsp&inc2=./jsp/insert.jsp'>jsp</a></li>
			<li><a href='index.jsp?inc=./jsp_member/index_jsp_member.jsp&inc2=./jsp_member/select.jsp'>jsp_member</a></li>
		</ul>
	</nav> <!-- -----------------------------------------------메뉴끝 -->
</body>
<script>
	if($('#btnLogin') != null){
		$('#btnLogin').click(function(){
			location.href='./member/login.jsp';
		});
	}
	if($('#btnLogout') != null){
		$('#btnLogout').click(function(){
			location.href='./member/logout.jsp';
		});
	}
</script>
</html>