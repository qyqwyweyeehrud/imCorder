<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 메뉴를 클릭하면 하위메뉴 등장</title>
<script src='../lib/jquery-3.4.1.js'></script>
<style>
	#bm>span{
		font-style: 배달의민족 한나체 Pro;
	}
	#main{
		width:660px;
		height:80px;
		border: 1px solid #1dc694;
		border-radius: 10px;
	}
	#main>div{
		margin:15px;
		width:100px;
		height:50px;
		float:left;
		border: 1px solid #eee;
	}
	#main>div>div{
		display:none;
	}
	#main>div>span{
		display:block;
		text-align: center;
		width:100px;
		height:50px;
		background-color:#1dc694;
		border-radius: 5px;
		color:#fff;
		font-size: 1.5em;
		font-style: BMHANNAPro;
	}
	#main>div>div{
		width:100px;
		height:25px;
		background-color:#f70;
		border-radius:5px;
	}
	#main>div>div>span{
		display:block;
		text-align: center;
		width:100px;
		height:25px;
		background-color:#fff;
		border: 1px solid #1dc694;
		color:#aaa;
		border-radius:5px;
		
	}
	
	
</style>
</head>
<body>
	<h3>메인 메뉴를 클릭하면 하위메뉴 등장</h3>
	<div id='bm'>
		<span>배달의 민족</span>
	</div>
	<div id='main'>
		<div id='sub1'>
			<span>짱깨</span>
			<div id='sub1_1'>
				<span>짜장면</span>
			</div>
			<div id='sub1_2'>
				<span>짜장면</span>
			</div>
			<div id='sub1_3'>
				<span>짜장면</span>
			</div>
			<div id='sub1_4'>
				<span>짜장면</span>
			</div>
			<div id='sub1_5'>
				<span>짜장면</span>
			</div>
		</div>
		<div id='sub2'>
			<span>1인분</span>
			<div id='sub2_1'>
				<span>짬뽕</span>
			</div>
			<div id='sub2_2'>
				<span>짬뽕</span>
			</div>
			<div id='sub2_3'>
				<span>짬뽕</span>
			</div>
			<div id='sub2_4'>
				<span>짬뽕</span>
			</div>
			<div id='sub2_5'>
				<span>짬뽕</span>
			</div>
		</div>
		<div id='sub3'>
			<span>레스토랑</span>
			<div id='sub3_1'>
				<span>탕수육</span>
			</div>
			<div id='sub3_2'>
				<span>탕수육</span>
			</div>
			<div id='sub3_3'>
				<span>탕수육</span>
			</div>
			<div id='sub3_4'>
				<span>탕수육</span>
			</div>
			<div id='sub3_5'>
				<span>탕수육</span>
			</div>
		</div>
		<div id='sub4'>
			<span>치킨</span>
			<div id='sub4_1'>
				<span>피자</span>
			</div>
			<div id='sub4_2'>
				<span>피자</span>
			</div>
			<div id='sub4_3'>
				<span>피자</span>
			</div>
			<div id='sub4_4'>
				<span>피자</span>
			</div>
			<div id='sub4_5'>
				<span>피자</span>
			</div>
		</div>
		<div id='sub5'>
			<span>보쌈족발</span>
			<div id='sub5_1'>
				<span>파스타</span>
			</div>
			<div id='sub5_2'>
				<span>파스타</span>
			</div>
			<div id='sub5_3'>
				<span>파스타</span>
			</div>
			<div id='sub5_4'>
				<span>파스타</span>
			</div>
			<div id='sub5_5'>
				<span>파스타</span>
			</div>
		</div>
	</div>
	
	
	<script>
		$(document).ready(function(){
			$('#sub1').hover(
				function(){
					$('#sub1>div').slideToggle(500);
				},
				function(){
					$('#sub1>div').slideToggle(500);
				}
			);
			$('#sub2').hover(
					function(){
						$('#sub2>div').slideToggle(500);
					},
					function(){
						$('#sub2>div').slideToggle(500);
					}
			);
			$('#sub3').hover(
					function(){
						$('#sub3>div').slideToggle(500);
					},
					function(){
						$('#sub3>div').slideToggle(500);
					}
			);
			$('#sub4').hover(
					function(){
						$('#sub4>div').slideToggle(500);
					},
					function(){
						$('#sub4>div').slideToggle(500);
					}
			);
			$('#sub5').hover(
					function(){
						$('#sub5>div').slideToggle(500);
					},
					function(){
						$('#sub5>div').slideToggle(500);
					}
			);
		});
	</script>

</body>
</html>