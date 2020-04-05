<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selector_find</title>
<script src='../lib/jquery-3.4.1.js'></script>

</head>
<body>
	<div id='result'>
	</div>
	<script>
		//여기서<friends>는 root Element / root node 라고한다 ////나머지 아이들은 child 라고한다
		let xml = '';
		xml ='<friends>'
			+'	<friend>'
			+'		<name>hong</name>'
			+'		<language>Ruby</language>'
			+'	</friend>'
			+'	<friend>'
			+'		<name>kim</name>'
			+'		<language>Javascript</language>'
			+'	</friend>'
			+'	<friend>'
			+'		<name>park</name>'
			+'		<language>Java</language>'
			+'	</friend>'
			+'</friends>';//xml의 들여쓰기는 전혀의미가 없다
		let xmlDoc = $.parseXML(xml);//데이터가 구조화가 되서 파싱이되면 메모리 내부에 xml형태의 구조가 만들어진다
		
		let output ='';
		$(xmlDoc).find('friend').each(function(index){//$(this)응 item대신에 사용가능하기에 item을 생략할수 있다
			output += '<div>';
			output += '		<h1>' + $(this).find('name').text() + '</h1>';
			output += '		<p>' +  $(this).find('language').text() + '</p>';
			output += '</div>';
		});
		$('#result').html(output);
		$('div>div').css({'float':'left' , border:'2px solid #999' , width:'100px' , height:'150px' ,margin:'10px' ,padding:'5px' ,'box-sizing' :'border-box' ,'box-shadow':'3px 3px 3px #aaa' ,'border-radius':'5px'});
		$('div>h1').css({'text-align':'center'}).add('div>p').css({'text-align':'center'});
	</script>
</body>
</html>