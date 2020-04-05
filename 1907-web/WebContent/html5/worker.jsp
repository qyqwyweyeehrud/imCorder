<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>worker</title>
</head>
<body>
	<h3>worker(web multi thread)</h3>
	<form name='frm'>
		<input type='button' value='WORKER' name='btnWorker'/>
		<input type='button' value='RUN' name='btnRun'/>
		<p/>
		<textarea cols='70' rows='20' name='doc'></textarea>
	</form>
	<script>
		frm.btnWorker.onclick = function(){
			frm.doc.value='';
			let w = new Worker('gogodan.js');
			w.onmessage = function(ev){
				frm.doc.value = ev.data;
			}
		}
		frm.btnRun.onclick = goGuGu;
		function goGuGu(){
			let dan=5;
			let str='';
			frm.doc.value='';
			for(i=1 ; i<5000; i++){
				str += dan +"*"+ i + "=" + (dan*i) + "\n";
				for(j=0 ; j<100000;j++){}//딜레이가 필요해서
			}
			frm.doc.value = str;
		}
			
		
	</script>
</body>
</html>