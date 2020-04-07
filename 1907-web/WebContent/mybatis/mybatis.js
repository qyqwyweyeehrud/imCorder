/**
 * 
 */
let getId=function(id){return document.getElementById(id)}
let url = 'index_mybatis.jsp?inc=./mybatis/'
let btnFunc = function(){
	if(getId('btnInsert')!=null){
		getId('btnInsert').onclick = function(){
			frm.action = 'insert.myba'
			frm.submit();
		}
	}
	if(getId('btnList')!=null){
		getId('btnList').onclick = function(){
			frm.enctype ="";
			frm.action = 'select.myba'
			frm.submit();
		}
	}
	if(getId('btnFind')!=null){
		getId('btnFind').onclick = function(){
			frm.nowPage.value=1;
			frm.action = 'select.myba'
			frm.submit();
		}
	}
}
let go = function(nowPage){
	frm.nowPage.value = nowPage;
}
let view = function(serial){
	frm.serial.value = serial;
}