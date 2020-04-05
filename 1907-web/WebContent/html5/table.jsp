<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블</title>
</head>
<body>
	<h3>기본구조</h3><!-- 칸수는 항상 일정해야한다 -->
	<table border='1'>
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
	</table>
	
	<h3>테이블 넓이높이 지정</h3>
	<table border='1' width='300px' height='100px' align='center'>
		<tr align='center'>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td align='right'>5</td>
			<td>6</td>
		</tr>
	</table>
	
	<h3>회원명단</h3>
	<table border='1' width='400px'>
		<tr bgcolor='#ccc'>
			<td>번호</td>
			<td>성명</td>
			<td>연락처</td>
		</tr>
		<tr>
			<td>1</td>
			<td>김</td>
			<td>010-2222-2222</td>
		</tr>		
	</table>
	
	<h3>테이블 헤더</h3>
	<table width='400px' border='1'>
		<tr bgcolor='#d00'>
			<th>번호</th>
			<th>성명</th>
			<th>연락처</th>
		</tr>
		<tr>
			<td>1</td>
			<td>김</td>
			<td>010-2222-2222</td>
		</tr>
	</table>
	
	<h3>셀의 여백</h3>
	<table border='1' cellpadding='30px' cellspacing='10px'>
		<tr>
			<td>A</td>
			<td>B</td>
		</tr>
		<tr>
			<td>C</td>
			<td>D</td>
		</tr>
	</table>
	
	<h3>셀병합</h3>
	<table border='1px' width='300px' cellspacing='0px'>
		<tr>
			<td>A</td>
			<td>B</td>
			<td colspan='2'>C</td>
		</tr>
		<tr>
			<td>D</td>
			<td>E</td>
			<td>F</td>
			<td rowspan='2'>G</td>
		</tr>
		<tr>
			<td>H</td>
			<td>I</td>
			<td>J</td>
		</tr>
		<tr>
			<td>K</td>
			<td>L</td>
			<td>M</td>
			<td>N</td>
		</tr>
		<tr>
			<td colspan='3'>O</td>
			<td rowspan='2'>P</td>
		</tr>
		<tr>
			<td colspan='2'>Q</td>
			<td colspan='1'>R</td>
			
		</tr>
	</table>
	
	<h3>frame:above</h3>
	<table frame='above'>
		<tr>
			<td>A</td>
			<td>B</td>
			<td>C</td>
			<td>D</td>			
		</tr>
		<tr>
			<td>A</td>
			<td>B</td>
			<td>C</td>
			<td>D</td>
		</tr>
	</table>
	
	<h3>frame:hsides</h3>
	<table frame='hsides'>
		<tr>
			<td>A</td>
			<td>B</td>
			<td>C</td>
			<td>D</td>			
		</tr>
		<tr>
			<td>A</td>
			<td>B</td>
			<td>C</td>
			<td>D</td>
		</tr>
	</table>
</body>
</html>




















