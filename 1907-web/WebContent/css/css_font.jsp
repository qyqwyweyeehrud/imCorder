<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		#font_size>#px{
			font-size:15px;
		}
		#font_size>#em{
			font-size:1em;
		}
		#font_size>#per{
			font-size:300%;
		}
		#line_height{
			border:1px solid #aaaaff;
			padding:0px;
			box-sizing:border-box;
			width:200px;
			line-height:1.5em;
			letter-spacing:1px;
		}
		#text_overflow>div{
			border:1px solid #0000ff;
			width:200px;
			margin-top:10px;
			white-space:nowrap;
		}
		#text_overflow>#div1{
			text-overflow:ellipsis;
			overflow:hidden;
		}
		#text_overflow>#div2{
			text-overflow:clip;
			overflow:hidden;
		}
		#text_overflow>#div3{
			overflow:auto;
		}
		#text_overflow>#div5{
			white-space:normal;
		}
		#text_shadow{
			font-size:4em;
			font-weight:bold;
			text-shadow: 3px 3px 1px #ffff00;
		}
	</style>
</head>
<body>
	<h3>font</h3>
	<div id='font_size'>
		<div>기본크기 123 가나다</div>
		<div id='px'>PX 123 가나다</div>
		<div id='em'>EM 123 가나다</div>
		<div id='per'>% 123 가나다</div>
	</div>
	<div id='line_height'>
		줄간격테스트 123 abc 줄간격테스트 123 abc 줄간격테스트 123 abc
		줄간격테스트 123 abc 줄간격테스트 123 abc 줄간격테스트 123 abc
		줄간격테스트 123 abc 줄간격테스트 123 abc 줄간격테스트 123 abc
	</div>
	<div id='text_overflow'>
		<div id='div1'>매우 매우 긴 문자열이 들어 있는 제목 입니다.</div>
		<div id='div2'>매우 매우 긴 문자열이 들어 있는 제목 입니다.</div>
		<div id='div3'>매우 매우 긴 문자열이 들어 있는 제목 입니다.</div>
		<div id='div4'>매우 매우 긴 문자열이 들어 있는 제목 입니다.</div>
		<div id='div5'>매우 매우 긴 문자열이 들어 있는 제목 입니다.</div>
	</div>
	
	<div id='text_shadow'>
		1907기 화이팅
	</div>
</body>
</html>






















