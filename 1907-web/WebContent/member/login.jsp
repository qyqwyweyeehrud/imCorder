<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='../css/index.css'/>
<script src = '../lib/jquery-3.4.1.js'></script>
</head>
<body>
	
	<!-- 아이디/ 암호를 입력받아서 db에 존재한다면 로그인 처리(session.setAtrribute(K,V)) -->
		<!-- top.jsp -->
	<header id='header'> <!-- ----------------------------------------------헤더 -->
		<img src='../image/google.png' id='google'/>
	</header><!-- ---------------------------------------------헤더끝 -->
	<div id='Loginmain'>
		
		<div id='goo'>
			<h2> LOGIN </h2>
		</div>
		<div id='log'>
			<form name='lfrm' id='lfrm' method='post' >
				<input type='text' name='mid' id='mid'/></br>
				<input type='text' name='pwd' id='pwd'/></br>
				<input type='button' name='btnLogin' id='btnLogin' value='LOGIN'/></br>
				<input type='button' name='btnCancel' id ='btnCancel' value='취소'/></br>
				<a href=''>아이디 비밀번호 찾기</a>
			</form>
		</div>
		<div id='lbanner'>
			<img src='../image/logban.jpg'/>
		</div>
		
	</div>
		<footer> <!-- ----------------------------------------------------------풋터 -->
		<div id='gongji'>
			<h4>공지사항</h4>
		</div>
		<div id='sogamain'>
			<div id='soga'>
				<ul>
					<li>Creators</li>
					<li>Partners</li>
					<li>Developers</li>
				</ul>
			</div>
			<div id='soga1'>
				<ul>
					<li> <a href=''>크리에이터</a> | <a href=''>스몰 비지니스</a>
					<li> <a href=''>비즈니스 광고</a> | <a href=''>스토어개설</a> | <a href=''>지역업체 등록</a></li>
					<li> <a href=''>네이버 개발자 센터</a> | <a href=''>오플API</a> | <a href=''>오픈소스</a> | <a href=''>구글D2</a></li>
				</ul>
			</div>
		</div>
	</footer> <!--  --------------------------------------------풋터끝 -->
	<script>
		$('#btnLogin').click(function(){
			$('#lfrm').attr('action','login_result.jsp').submit();
		});
		$('#btnCancel').click(function(){
			location.href='../index.jsp';
		});
	</script>
</body>
</html>