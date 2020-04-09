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
	if(getId('btnatt')!=null){
		let btn = getId('btnatt');
		btn.onchange =function(){
			let attList = getId('attList');
			let str = "<ul>";
			let files = btn.files;
			for(f of files){
				str += "<legend>첨부된 파일목록</legend>";
				str += "<li>" + f.name + "(" + parseInt(f.size/1000) + " KB )" +"</li>";
			}
			str+= "</ul>";
			attList.innerHTML = str;	
		}
	}
	if(getId('btnModify')!=null){
		getId('btnModify').onclick = function(){
			frm.enctype ="";
			frm.action = "modify.myba";
			frm.submit();
		}
	}
	if(getId('btnUpdate')!=null){
		getId('btnUpdate').onclick = function(){
			frm.enctype ="";
			frm.action = "modifyR.myba";
			frm.submit();
		}
	}
	if(getId('btnDelete')!=null){
		getId('btnDelete').onclick = function(){
			let pwd = prompt('삭제하려면 암호를....');
			if(pwd!=null && pwd !=''){
				frm.pwd.value = pwd;
				frm.action = 'delete.myba';
				frm.submit();
			}
		}
	}
	if(getId('btnRepl')!=null){
		getId('btnRepl').onclick = function(){
			frm.enctype ="";
			frm.action = 'repl.myba';
			frm.submit();
		}
	}
	if(getId('btnReplR')!=null){
		getId('btnReplR').onclick = function(){
			frm.enctype ="";
			frm.action = 'replR.myba';
			frm.submit();
		}
	}
}
let go = function(nowPage){
	frm.nowPage.value = nowPage;
}
let view = function(serial){
	frm.serial.value = serial;
	frm.action = 'view.myba';
	frm.submit();
}
let delCheck =function(ev){//checkbox
	let tag = ev.parentElement.childNodes[1];//label
	if(ev.checked){
		tag.style.textDecoration = "line-through";
		tag.style.color = '#f00';
	}else{
		tag.style.textDecoration = "none";
		tag.style.color = '';
	}
}




































