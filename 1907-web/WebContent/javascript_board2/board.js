/**
 * 
 */
/* javascript_board 에서 사용되는 script
 * date : 2020-01-12
 */

//localStorage에 저장된 데이터를 배열에 저장
var seq; // 시퀀스
let db;

function loadDB(){
	let temp = localStorage.getItem('board2');
	seq = localStorage.getItem('seq');
	if(temp == null){
		db = [];
	}else{
		db = JSON.parse(temp);
	}
	if(seq == null){
		seq = 1;
	}
}
function storeDB(){
	let tempDB = JSON.stringify(db);
	localStorage.setItem('board2',  tempDB);
	localStorage.setItem('seq', seq);
}

function Data(mName, subject, content, serial, hit, mDate ){
	this.mName = mName;
	this.subject = subject;
	this.content = content;
	this.serial = serial;
	this.hit = hit;
	this.mDate = mDate;
	
}

function toHTML(d){//javascript , js페이지 에서는 \를 쓰면안된다
  let str = `
			<div class='items'>
				<span class='serial'>${d.serial}</span>
				<span class='subject'><a href='#' onclick='view(${d.serial})'>${d.subject}</a></span>
				<span class='mName'>${d.mName}</span>
				<span class='mDate'>${d.mDate}</span>
				<span class='hit'>${d.hit}</span>
			</div>`;
	return str;//뷰라고하는 펑션을 d.serial 매개변수를 주고 펑션을 실행하게했다
}

function view(serial){
	
	for(let i=0 ; i<db.length ; i++){
		if(db[i].serial == serial){
			let data = db[i];
			data.hit++;//조회수 증가
			db[i] = data;
			storeDB();
			break;
		}
	}
	
	localStorage.setItem('serial', serial);//뷰페이지로 넘어가서 해당시리얼번호를 가져오거나 삭제하거나 시리얼번호 기준으로 삭제를 해야되기때문에
	location.href='view.jsp';
}

if(brd.btnInsert != null){//입력버튼이 낫널이 아니라면 입력 페이지로 이동해서
	brd.btnInsert.onclick = function(){
		location.href='insert.jsp';

	}
}

if( brd.btnSave != null){
	brd.btnSave.onclick = function(){
		loadDB();
		let tempDate = new Date();
		let now = tempDate.getFullYear() + '-' + (tempDate.getMonth()+1) + '-' + tempDate.getDate();
		seq++;
		let data = new Data(brd.mName.value , brd.subject.value, brd.content.value, seq, 0, now);
		db.push(data);
		storeDB();
		
	}
}
if(brd.btnSearch != null ){
	brd.btnSearch.onclick = function(){
		let list = document.getElementById('list');
		let findStr = brd.findStr.value;
		localStorage.setItem('findStr', findStr);//검색어를 저장해서 되돌아올때 검색된 값을 보여주기위해 
		loadDB();
		db.sort(noSort);
		list.innerHTML = '';
		for(d of db){
			if(d.subject.indexOf(findStr)>=0 || d.content.indexOf(findStr)>=0){
				list.innerHTML += toHTML(d);
			}
		}
	}
}
//serial을 내림차순하기 위한 함수
function noSort(obj1,obj2){
	return Number(obj2.serial)-Number(obj1.serial);
}


if(brd.btnModify != null){ //수정 삭제폼으로 이동
	brd.btnModify.onclick = function(){
		let serial = brd.serial.value;
		localStorage.setItem('serial', serial);
		location.href='modify.jsp';

	}
}



if(brd.btnSelect != null){
	brd.btnSelect.onclick = function(){
		location.href='select.jsp';

	}
}

if(brd.btnUpdate != null){ //내용 수정
	brd.btnUpdate.onclick = function(){
		let yn = confirm('정말 수정 할거지요 ?????');
		if(yn){
			let serial = brd.serial.value;
			for(let i=0 ; i<db.length ; i++){
				if(db[i].serial == serial){
					let data = db[i];
					data.subject = brd.subject.value;
					data.content = brd.content.value;
					db[i] = data;
					storeDB();
					break;
				}
			}
			location.href='select.jsp';
		}

	}
}

if(brd.btnDelete != null){
	brd.btnDelete.onclick = function(){
		let yn = confirm('정말 삭제할거지요 ?????');
		if(yn){
			let serial = brd.serial.value;
			for(let i=0 ; i<db.length ; i++){
				if(db[i].serial == serial){
					db.splice(i,1);
					storeDB();
					break;
				}
			}
			location.href='select.jsp';
		}
	}
}


if(brd.btnInit !=null ){
	brd.btnInit.onclick = function(){
		let yn = confirm('데이터 베이스를 정말 초기화 할거요???');
		if(yn){
			localStorage.removeItem('board2');
			localStorage.removeItem('seq');
			db = [];
		}
	}
}

