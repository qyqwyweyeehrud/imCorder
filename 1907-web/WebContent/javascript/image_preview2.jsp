<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview2</title>
<style>
	#btnFile{
		display:none;
	}
</style>
</head>
<body>
	<h3>이미지 미리보기(II)</h3>
	<img id='target1' width='200px' height='250px'/>
	<img id='target2' width='200px' height='250px'/>
	<img id='target3' width='200px' height='250px'/>
	<input type='file' id='btnFile'/>
	
	<script>
		let t1 = document.getElementById('target1');
		let t2 = document.getElementById('target2');
		let t3 = document.getElementById('target3');
		let btnFile = document.getElementById('btnFile');
		
		t1.onclick = imagePreview;
		t2.onclick = imagePreview;
		t3.onclick = imagePreview;
		
		function imagePreview(event){
			btnFile.click();
			btnFile.onchange = function(){
				let url = btnFile.files[0];
				let reader = new FileReader();
				reader.readAsDataURL(url);
				
				reader.onload = function(ev){
					//이미지를 표시할위치가 event.srcElement가 내가 이미지를 표시할 타겟이다.
					let target = event.srcElement;
					let img = new Image();//1dmf 눌럿을때 event는 31행의 매개변수event가 가지고있음
					img.src = ev.target.result;
					target.src = img.src;
			}
			}
		}
	</script>
</body>
</html>