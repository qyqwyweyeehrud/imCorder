<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview3</title>
<style>
	#att_file{
		border: 1px solid #0000ff;
		padding:10px;
		box-sizing: border-box;
		
	}
	#att_file>div{
		display:inline-block;
		position: relative;
	}
	#att_file .btnDel{
		position:absolute;
		right: 2px;
		bottom: 2px; 
		width:40px;
		height: 40px;
		font-size: 2.5em;
		padding:0px;
		border:0px solid #ffffff;
		opacity:0.2;
		background-color: #fff;
	}
	
</style>
</head>
<body>
	<h3>첨부 이미지 동적 삽입/삭제</h3>
	<form name='frm'>
		<label>첨부이미지</label>
		<div id='att_file'>
		</div>
	</form>
	<script>
		let main = document.getElementById('att_file');
		let cnt = 0;
		
		makeDiv(main);
		function makeDiv(main){
			let div = document.createElement('div');
			div.setAttribute('style','border:1px solid #f00; width:120px; height:180px; margin:3px; ');
			//att_file안에 <div></div>가 만들어진것
			
			//이미지 태그 추가
			let img = document.createElement('img');//<img></img>가 만들어진것
			img.setAttribute('name','img'+cnt);// <img name='img0'></img> 가만들어진것
			img.setAttribute('width','120px');
			img.setAttribute('height','180px');
			img.src='http://placehold.it/120x180';
			div.appendChild(img);//div에 만들어진 img를 추가
			
			//삭제버튼
			let btnDel = document.createElement('input');
			btnDel.setAttribute('name','btnDel'+cnt);//<input name='btnDel0'></input>
			btnDel.setAttribute('type','button');
			btnDel.setAttribute('value','X');
			btnDel.setAttribute('class','btnDel');
			btnDel.onclick = function(ev){
				let obj = ev.srcElement;
				let parent = obj.parentNode; //div
				let tag = parent.getElementsByTagName('input')[1];
				if(tag.getAttribute('modify')=='yes'){
					main.removeChild(parent);
				}
			}
			
			div.appendChild(btnDel);//div에 만들어진 btn추가
			
			
			
			
			//이미지당 필요한 file tag
			let file = document.createElement('input');
			file.setAttribute('type','file');
			file.setAttribute('name','attFile'+cnt);
			file.setAttribute('style','display: none');
			file.setAttribute('modify','no');
			div.appendChild(file);
			
			//이미지를 클릭하면
			img.onclick = function(){
				file.click();
			}
			
			file.onclick = function(event){
				let btn = event.srcElement;
				btn.onchange = function(){
					let url = btn.files[0];
					let reader = new FileReader();
					reader.readAsDataURL(url);
					
					reader.onload = function(ev){
						//이미지를 표시할위치가 event.srcElement가 내가 이미지를 표시할 타겟이다.
						let temp = new Image();//1dmf 눌럿을때 event는 31행의 매개변수event가 가지고있음
						temp.src = ev.target.result;
						img.src = temp.src;
					}
					if(file.getAttribute('modify')=='no'){
						makeDiv(main);//사진 추가했을때 div추가
					}
					file.setAttribute('modify','yes');
				}
			}
			
			
			main.appendChild(div);//att_file에 div추가
			cnt++
		}
		
		
		
	</script>
</body>
</html>






























