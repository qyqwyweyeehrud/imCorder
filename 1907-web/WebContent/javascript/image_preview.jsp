<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>image_preview</title>
</head>
<body>
	<h3>image_preview</h3>
	<input type='file' value='사진' id ='btnFile' />
	<img width='200px' height='300px' id = 'target'/>
	<script>
		let btn = document.querySelector('#btnFile')//id는 # name은.
		btn.onchange = function(event){//파라메터로 event
			let ele = event.srcElement;
			console.log('srcElement:',ele);
			console.log('value:',ele.value);//보안상 완벽한 경로는 보여주지 않는다
			let url = ele.files[0];//무조건 배열로 나오기때문에// 파일의 경로가 떨어진다
			let reader = new FileReader();
			reader.readAsDataURL(url);//선택한 경로의 파일명까지를 - 파일리더를 만들어서  -리더의 패턴으로 들어온 애들 읽어라
			
			reader.onload = function(ev){//파일이 다 읽혀지면,
				let img = new Image();
				img.src = ev.target.result;//얘가 실제로 읽혀진 파일
				document.getElementById('target').src = img.src;
			}
		}
	</script>
</body>
</html>