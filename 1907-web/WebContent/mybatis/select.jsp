<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id='main'>
		<h3>자유 게시판</h3>
		<form name='frm' id='frm_select' method='post'>
			<input type="button" value='입력' id='btnInsert'/>
			<input type='text' name="findStr" value='${param.findStr }'/>
			<input type="button" value='검색' id='btnFind'/>
			
			<input type='hidden' name='nowPage' value='${param.nowPage }'/>
			<input type='hidden' name='serial' value='100'/>
		</form>
		
		<div id='title'>
				<span class='no'>순번</span>
				<span class='subject'>과목</span>
				<span class='id'>작성자</span>
				<span class='mDate'>작성일 </span>
				<span class='hit'>조회수</span>
		</div>
			<div class='row' onclick="view(100)">
				<span id='no'>순번1</span>
				<span id='subject'>과목1</span>
				<span id='id'>작성자1</span>
				<span id='mDate'>작성일1 </span>
				<span id='hit'>조회수1</span>
			</div>
			<div class='row' onclick="view(200)">
				<span id='no'>순번2</span>
				<span id='subject'>과목2</span>
				<span id='id'>작성자2</span>
				<span id='mDate'>작성일2 </span>
				<span id='hit'>조회수2</span>
			</div>
			<div class='row' onclick="view(300)">
				<span id='no'>순번3</span>
				<span id='subject'>과목3</span>
				<span id='id'>작성자3</span>
				<span id='mDate'>작성일3 </span>
				<span id='hit'>조회수3</span>
			</div>
			
			<div id='page'>
				<input type='button' value='이전'  onclick='go(1)'/>
				
				<input type='button' value='1' onclick='go(1)'/>
				<input type='button' value='2' onclick='go(2)'/>
				<input type='button' value='3' onclick='go(3)'/>
				<input type='button' value='4' onclick='go(4)'/>
				<input type='button' value='5' onclick='go(5)'/>
				
				<input type='button' value='다음' onclick='go(6)'/>
			
			
		</div>
	</div>	
</body>
</html>