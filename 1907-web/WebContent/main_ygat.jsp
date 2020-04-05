<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<style>
	body, html {
	margin: 0;
	padding: 0;
	height: 100%;
	}
	#top{
		height: 72px;
		background-color:#f6323e;
		width: 100%;
		position: fixed;
		
	}
	#top #top_menu{
		width:1024px;
		height: 64px;
		margin: auto;
		box-sizing: border-box;
		padding: 22px 18px 18px 18px;
	}
	#top #top_menu h1{
		color:#fff;
		margin:0px;
		font-size: 1.4em;
		float: left;
	}
	#top #top_menu div{
		margin-left:30px;
		float:right;
		height: 35px;
		background-color: :#f6323e;
		color:#ddd;
		font-size:1.15em;
	}
	#top #top_menu div:hover{
		color:#fff;
		cursor: pointer;
	}
	
	#top #top_menu #t_login{
		margin-right: 40px;
	}
	#top #top_menu div:last-child {
		background-color:#fff;
		width:30px;
		height: 30px;
	}
	
	/*-------숨겨진얘들 hover나 클릭시 보임---------------*/
	#m_list{
		box-sizing:border-box;
		padding : 30px 30px 30px 43px;
		width:150px;
		height: 160px;
		background-color:#fff;
		border-radius: 10px;
		position: relative;
		left:800px;
		top:-10px;
		display: none;
		
	}
	#m_list div{
		margin-bottom: 5px;
	}
	#m_list div:hover{
		color:#f6323e;
		cursor: pointer;
	}
	/*<div id='m_list'>
			<div id='m_notice'>공지사항</div>
			<div id='m_event'>이벤트</div>
			<div id='m_qna'>QnA</div>
			<div id='m_m_ask'>1:1문의</div>
		</div>
		
		<div id='s_list'>
			<input type='text' id='s_search'/>
			<input type='button' id='s_drop'/>
		</div>*/
	#s_list{
		width: 500px;
		height: 370px;
		position: relative;
		left:220px;
		top:-64px;
		display: none;
	}
	#s_list #s_list_top{
		background-color:#f6323e;
		width: 500px;
		height: 72px;
		box-sizing: border-box;
		vertical-align: middle;
	}
	#s_list #s_list_top input[type=text]{
		width:425px;
		height: 30px;
		border: none;
		background-color:#f6323e;
		font-size:1.3em;
		color:#fff;
		font-weight: lighter;
	}
	#s_list #s_list_top #s_btnSearch{
		width: 30px;
		height: 50px;
		background-color:#fee;
		border: 0;
		outline:0;
		cursor: pointer;
		
	}
	#s_list #s_list_top #s_drop{
		width: 30px;
		height: 50px;
		background-color:#fee;
		border: 0;
		outline:0;
		cursor: pointer;
	}
	#s_list #s_list_bottom{
		background-color:#fff;
		width:500px;
		height: 270px;
		border-radius: 0px 0px 10px 10px;
	}
	
	
	/*----------------------------------------------------------------------------------------------*/
	#mid{
		
	}
	#mid #back_hidden{
		height: 100px;
		background-color:#f6323e;
	}
	#mid #m_img	{
		height: 400px;
	}
	#mid #m_img img{
		max-width: 100%;
		height: auto;
	}
	#mid #mid_2{
		width:900px;
		margin: auto;
		overflow: hidden;
		height: 200px;
	}
	#mid #m_menu{
		width:400px;
		height: 120px;
		padding: 32px 0px 29px 0px;
		margin: auto;
	}
	#mid #m_menu img{
		max-height: 100%;
		width:auto;
	}
	#mid #m_hidden{
		width:417px;
		height: 0px;
		
	}
	#mid #m_hidden .room{
		float:left;
		width:104px;
		height: 110px;
		position: relative;
		left:250px;
		top:-150px;
	}
	#mid #m_hidden div:hover {
		cursor: pointer;
	}
	#mid #mid_3{
		width:900px;
		margin: auto;
		overflow: hidden;
		height: auto;
	}
	#mid #mid_3 h3{
		font-size: 1.5em;
	}
	
	#mid #mid_3 #m_notice{
		height: 162px;
		margin-bottom: 50px;
	}
	#mid #mid_3 #s_notice1,#s_notice2{
		width: 438px;
		height: 160px;
		float: left;
		border: 1px solid #eee;
	}
	#mid #mid_3 #s_notice1,#s_notice2:hover{
		cursor: pointer;
	}
	#mid #mid_3 #s_notice1{
		margin-right:20px;
	}
	#mid #mid_3 #event{
		height: 160px;
		background-color:#ddd;
		margin-bottom: 20px;
	}
	#mid #mid_3 #regist{
		height: 190px;
	}
	#mid #mid_3 #s_regist1,#s_regist2{
		width: 438px;
		height: 160px;
		float: left;
		border: 1px solid #eee;
	}
	#mid #mid_3 #s_regist1{
		margin-right:20px;
	}
	#mid #mid_3 #s_regist2:hover{
		cursor: pointer;
	}
</style>
</head>
<body>
	<div id='top'>
		<div id='top_menu'>
			<h1>여기어때.</h1>
			<div id='t_login'>
				로그인
			</div>
			<div id='t_more'>
				더보기
			</div>
			<div id='t-list'>
				예약내역
			</div>
			<div id='t_search'>
				<img src=''/>
			</div>
		</div>
		
		<div id='m_list'>
			<div id='m_notice'>공지사항</div>
			<div id='m_event'>이벤트</div>
			<div id='m_qna'>QnA</div>
			<div id='m_m_ask'>1:1문의</div>
		</div>
		
		<div id='s_list'>
			<div id='s_list_top'>
				<input type='button' id='s_btnSearch'/>
				<input type='text' id='s_search' value='지역 , 숙소명'/>
				<input type='button' id='s_drop'/>
			</div>
			<div id='s_list_bottom'>
			</div>
		</div>
	</div>
	<!-- ------------------------------------------------------------------------- -->
	<div id='mid'>
		<div id='back_hidden'></div>
		<div id='m_img'>
			<img src='./image/main_img.JPG'/>
		</div>
		
		<div id='mid_2'>
			<div id='m_menu'>
				<img src='./image/main_menu.JPG'/>
			</div>
			
			<div id='m_hidden'>
				<div id='ch' class='room' onclick=''></div>
				<div id='ht' class='room' onclick=''></div>
				<div id='mt' class='room' onclick=''></div>
				<div id='cp' class='room' onclick=''></div>
			</div>
		</div>
		<div id='mid_3'>
			<h3>여기어때 소식</h3>
			<div id='m_notice'>
				<div id='s_notice1' onclick=''>
				</div>
				<div id='s_notice2' onclick=''>
				</div>
			</div>
			
			<h3>이벤트 및 광고</h3>
			<div id='event'>
				<div id='s_event'>
				</div>
			</div>
			
			<div id='regist'>
				<div id='s_regist1'>
				</div>
				<div id='s_regist2' onclick=''>
				</div>
			</div>
		
		</div>
	</div>
	<!-- -------------------------------------------------------------------------- -->
	<div id='bottom'>
	
	</div>
	<script>
		$('#t_more').click(function(){
			$('#m_list').slideToggle(10);
		});	
		$('#t_search').click(function(){
			$('#s_list').slideToggle(10);
		});	
		$('#s_drop').click(function(){
			$('#s_list').slideToggle(10);
		});	
		
	</script>
</body>
</html>