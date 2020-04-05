<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#div1 span:first-child{color:red} /*div1안에있는 것 중에서 첫번째 태그가 스팬태그라면*/
	#div2 span:first-of-type{color:red}/*div2안에있는 타입이 스팬 인것중에 첫번째 스팬태그*/
	
	#div1 span:last-child{color:blue;}
	#div2 span:last-of-type{color:blue;}
	
	#div3 li:nth-child(2n){color:red} /*n번째 차일드(2의배수)*/
	#div3 li:nth-child(2n-1){color:blue}
	#div4 div:nth-child(2n){background-color:#eee}
	#div4 div:nth-child(5n){border-bottom:1px solid #555;}
	
	#div5 span{
		margin-top:50px;
		border:1px solid #777;
		background-color:#999;
		float:left;
		padding:5px;
	}
	
	#div5 span:first-child{border-radius:10px 0 0 10px;}
	#div5 span:last-child{border-radius:0 10px 10px 0;}
	#div5 span:hover{
		background-color:#eee;
		transition:background-color 1s;
	}
</style>
</head>
<body>
	<div id='div1'>
		<label>label</label>
		<span>span 1</span>
		<span>span 2</span>
		<span>span 3</span>
		<label>label</label>
	</div>
	
	<div id='div2'>
		<label>label</label>
		<span>span 1</span>
		<span>span 2</span>
		<span>span 3</span>
		<label>label</label>
	</div>
	
	<div id='div3'>
		<ul>
			<li>강원도</li>
			<li>경기도</li>
			<li>충청도</li>
			<li>전라도</li>
			<li>경상도</li>
			<li>제주도</li>
		</ul>
	</div>
	
	<div id='div4'>
		<div>제목 1...........................................</div>
		<div>제목 2...........................................</div>
		<div>제목 3...........................................</div>
		<div>제목 4...........................................</div>
		<div>제목 5...........................................</div>
		<div>제목 6...........................................</div>
		<div>제목 7...........................................</div>
		<div>제목 8...........................................</div>
		<div>제목 9...........................................</div>
		<div>제목 10...........................................</div>
	</div>
	
	<div id='div5'>
		<span>강원도</span>
		<span>경기도</span>
		<span>충청도</span>
		<span>전라도</span>
		<span>경상도</span>
		<span>제주도</span>
	</div>

</body>
</html>