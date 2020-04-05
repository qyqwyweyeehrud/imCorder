<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ani_slide</title>
<script src='../lib/jquery-3.4.1.js'></script>
<script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"
  integrity="sha256-VazP97ZCwtekAsvgPBSUwPFKdrwD3unUfSGVYrahUqU="
  crossorigin="anonymous"></script>
<style>
	*{
		margin: 0px;
		padding:0px;
	}
	.canvas{
		overflow:hidden;
		position:relative;
		width:600px;
		height:400px;
	}
	
	.slider_panel{
		width:3000px;
		position:relative;
	}
	.slider_image{
		float: left;
		width:600px;
		height:400px;
	}
	
	.slider_text_panel{
		position: absolute;
		top:200px;
		left:50px;
	}
	.slider_text{
		position:absolute;
		width:250px;
		height:150px;
	}
	
	.control_panel{
		position:absolute;
		top:380px;
		left:270px;
		height:13px;
		overflow: hidden;
	}
	.control_button{
		width:15px;
		height:46px;
		position: relative;
		float: left;
		cursor: pointer;
		background-image: url('../image/back.gif');
	}
	.control_button:hover{top:-16px;}
	.control_bottun:active{top:-31px;}
</style>
</head>
<body>
	<h1>Test Header</h1>
	<div class = "canvas">
		<div class='slider_panel'>
			<img class='slider_image' src='../image/a.jpg'/>
			<img class='slider_image' src='../image/aa.jpg'/>
			<img class='slider_image' src='../image/aaa.jpg'/>
			<img class='slider_image' src='../image/aaaa.jpg'/>
			<img class='slider_image' src='../image/aaaaa.jpg'/>
		</div>
		<div class='slider_text_panel'>
			<div class='slider_text'>
				<h1>ee</h1>
				<p>pp</p>
			</div>
			<div class='slider_text'>
				<h1>ee</h1>
				<p>pp</p>
			</div>
			<div class='slider_text'>
				<h1>ee</h1>
				<p>pp</p>
			</div>
			<div class='slider_text'>
				<h1>ee</h1>
				<p>pp</p>
			</div>
			<div class='slider_text'>
				<h1>ee</h1>
				<p>pp</p>
			</div>
		</div>
		<div class='control_panel'>
			<div class='control_button'></div>
			<div class='control_button'></div>
			<div class='control_button'></div>
			<div class='control_button'></div>
			<div class='control_button'></div>
		</div>
	</div>
	<h1>Test Header</h1>
	
	<script>
		$(document).ready(function(){
			//슬라이더를 움직여 주는 함수
			function moveSlider(index){
				//슬라이더를 이동합니다
				var willMoveLeft = -(index*600);
				$('.slider_panel').animate({left:willMoveLeft},'slow');
				
				//control_button에 active 클래스를 부여/제거합니다
				$('.control_button[data-index='+index+']').addClass('active');
				$('.control_button[data-index!='+index+']').removeClass('active');
				
				//글자를 이동합니다
				$('slider_text[data-index='+index+']').show().animate({
					left:0
				});
				$('slider_text[data-index='+index+']').hide('slow',function(){
					$(this).css('left',-300);
				})
			}
			
			//초기 텍스트 위치를 지정 및 data-index할당
			$('.silder_text').css('left',-300).each(function(index){
				(this).attr('data-index',index);
			});
			
			//컨트롤 버튼의 클릭 리스너 지정 및 data-index할당
			$('.control_button').each(function(index){
				$(this).attr('data-index',index);
			}).click(function(){
				var index = $(this).attr('data-index');
				moveSlider(index);
			});
			
			//초기 슬러이더 위치 지정
			var randomNumber = Math.round(Math.random()*4);
			moveSlider(randomNumber);
			
			//이미지 넣기
//			let img=['a.jpg','aa.jpg','aaa.jpg','aaaa.jpg','aaaaa.jpg'];
//			$('slider_image').each(function(index){
//				$(this).attr({
//					'src' :'../image/'+img[index]
//				});
//			});
		});
	</script>

</body>
</html>