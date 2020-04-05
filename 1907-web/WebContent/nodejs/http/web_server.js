/**
 * web_server.js
 * date:2020.02.27
 * 웹서버 구축
 */
let http = require('http');//http라는 모듈을 import 한다
//let fs = require('fs'); //테스트 끝났으니 필요없음
let db = require('../begin/node_modules/oracledb');//오라클 디비를 사용하시위해서
let dbConf = require('./lib/dbConfig');//오라클 디비의 db콘피그

let express = require('../begin/node_modules/express');//---------------------------------------------------ejs로 변경하면서 추가되는내용
let bodyParser = require('../begin/node_modules/body-parser');//--------------------------------------------ejs로 변경하면서 추가되는내용
db.autoCommit = true;//-------------------------------------------------------------------------------------ejs로 변경하면서 추가되는내용

const hostName = 'localhost';//콘스트럭터 , 상수만들기
const port = 4000;

var config = {//--------------------------------------------------------------------------------------------ejs로 변경하면서 추가되는내용
	user :dbConf.user,
	password : dbConf.password,
	connectString : dbConf.connectString
}
var app = express();//--------------------------------------------------------------------------------------ejs로 변경하면서 추가되는내용
app.engine('html',require('../begin/node_modules/ejs').renderFile)//브라우저의사용을 어떤 모습으로 표시해줄것이냐? html의 문서작업은 ejs로 표현해주겟다 //-------------------------------------------ejs로 변경하면서 추가되는내용
app.use(express.static(__dirname + '/css'));//정적디렉토리로 만들겟다//그렇다면 ejs파일에서 파일경로를 지정할 필요가 없어진다//---------------------------------------------ejs로 변경하면서 추가되는내용
app.use(express.static(__dirname + '/lib'));//정적 디렉토리로 만들겟다//그렇다면 ejs파일에서 파일경로를 지정할 필요가 없어진다//---------------------------------------------ejs로 변경하면서 추가되는내용
app.use(bodyParser.urlencoded({extended : true}));//파라메터에 한글이 들어왔을때 정상적으로 처리되도록//-----------------------ejs로 변경하면서 추가되는내용

var server = http.createServer(app);//이 코드하나로 아래의 코드를 정리가된다 //-------------------------------------------ejs로 변경하면서 추가되는내용
server.listen(port,hostName);
var conn; // db connection object //dbconn의 역할을 얘가 할것이다 //------------------------------------------------ejs로 변경하면서 추가되는내용

function connect(){
	db.getConnection(config,function(err,connection){//----------------------------------------------------ejs로 변경하면서 추가되는내용
		if(err){
			console.log('connection fail....' + err);
		}else{
			console.log('connection.........')
			conn = connection;
		}
	});//데이터베이스를 연결하는 환경//lib안에 dbconfig.js를 가지고 config를 만들었었다
}
connect();

app.post('/insert',function(req,resp){//(request-요정정보,response-응답정보) //여것이 바로 라우팅
	resp.render(__dirname+'/insert_form.ejs',{'findStr':req.body.findStr});
});
app.post('/insertR',function(req,resp){
	let msg = "회원 정보가 추가 되었습니다";
	let param = [
		req.body.mId,
		req.body.mName,
		req.body.rDate,
		req.body.grade
	];
	let sql = "insert into member values(:mid,:pwd,:rDate,:grade)";
	conn.execute(sql,param,function(err,data){
		if(err){
			msg=err;
		}else{
			resp.render(__dirname +'/insert_result.ejs',{'msg':msg,'findStr':req.body.findStr});
		}
	});
});
app.post('/modify',function(req,resp){
	let param = [req.body.mId];
	let findStr = req.body.findStr;
	let sql = "select mId,pwd,to_char(rDate,'rrrr-mm-dd') rDate,grade from member where mid=:mId"
		conn.execute(sql,param,function(err,data){
			if(err){
				console.log(err);//에러페이지를 만들어보자
			}else{
				resp.render(__dirname+'/modify_form.ejs',{'data':data,'findStr':findStr});
			}
		});
});
app.post('/modifyR',function(req,resp){
	let msg = req.body.mId+' 님의 회원 정보가 수정되었습니다';
	let param = [
		req.body.mName,
		req.body.rDate,
		req.body.grade,
		req.body.mId
	];
	let sql = "update member set pwd=:pwd,rdate=:rdate,grade=:grade where mId=:mId";
	conn.execute(sql,param,function(err,data){
		if(err){
			msg=err;
		}else{
			resp.render(__dirname+'/modify_result.ejs',{'msg':msg , 'findStr':req.body.findStr});
		}
	});
});
app.post('/deleteR',function(req,resp){
	let param = [
		req.body.mId
	];
	let msg = "자료가 정상적으로 삭제되었습니다"
	let sql = "delete from member where mId=:mId";
	conn.execute(sql,param,function(err,data){
		if(err){
			msg=err;
		}else{
			resp.render(__dirname + '/delete_result.ejs',{'msg':msg,'findStr':req.body.findStr});
		}
	});
});
app.post('/view',function(req,resp){
	let mId = req.body.mId;
	let sql = "select mId,pwd,to_char(rDate,'rrrr-mm-dd') rDate,grade from member where mid=:mId"
		conn.execute(sql,[mId],function(err,data){
			if(err){
				console.log(err);
			}else{
				resp.render(__dirname +'/view.ejs',{'data':data,'findStr':req.body.findStr});
			}
		});
});
//post가 들어오든 get을 사용하는 모두하겟다는 all이다 // all을 post나get보다 먼저쓰면 오류남!!
app.all('/',function(req,resp){//페이지정보가 없이 도메인만 들어온경우 ex)www.naver.com
	select(req,resp);//select라는 function을 호출하게 할것이다
});
app.all('/select',function(req,resp){
	select(req,resp);//select라는 function을 호출하게 할것이다
});


function select(req,resp){//멤버dao에서 처리해서select해서 java와oracle로 한것을 -->java와 node.js로 할것임
	let findStr='';
	//'/'에서 처리된결과는 form태그가 없는상태에서 호출될것이다
	//'/select'에서  <form name='frm'/>에 액션을 지정해서 처리하겟다는것이다
	if(req.method=='POST'){//form태그가 있다면
		findStr = req.body.findStr;//body가 form태그를 나타냄 --/select?findStr=abc 로넘어온것이면 abc가 findStr에 들어간다
		//위를 jsp코드로 바꾸면 ==> request.getParameter("findStr");
	}
	let sql = "select mId,pwd,to_char(rdate,'rrrr-mm-dd') rdate,grade from member where mId like :id or pwd like :id order by pwd asc";
	conn.execute(sql,["%"+findStr+"%"],function(err,data){//파라베터는 무조건 배열타입으로 넘어가야함 //ps.setString("%"+findStr+"%")과 똑같음
		if(err){
			console.log(err);
		}else{
			resp.render(__dirname + '/select.ejs',{'data' : data , 'findStr' : findStr})//JOSN타입의 데이터값//셀렉트된 데이터를 렌더링 타입으로 던진다
			// <% %>안에서 위의 데이터를 처리할수있다
		}
	});
}
//const server = http.createServer(function(req,resp){//서버 만들기
	
//	let url = req.url;//요청정보 뒤에 페이지를 req.url이란 명령어로 컨트롤 할수 있구나~ //
	
	//파비콘제어
//	if(req.url == '/favicon.ico'){
//		resp.writeHead(404);
//		resp.end;
//		return;
//	}
	
//	connect();
	
//	resp.statusCode=200;
//	resp.setHeader('Content-type','text/html;charset=utf-8');
	/*
	resp.write('<li>url : '+url);
	resp.write('<li>dirname:'+__dirname);//경로명이나옴
	resp.write('<br/>방가');
	resp.end();//send랑 비슷한 역할
	*/
	
	//url과 __dirname을 가지고 fs을사용
//	resp.write(fs.readFileSync(__dirname + url));
//	resp.end();
	
//}); 
/*
console.log('http://%s:%d 로 접속하세요',hostName,port);

function connect(){
	db.getConnection({//{연결을 위한 환경,연결성공했을때,연결 실패했을때}
		user : dbConf.user,
		password : dbConf.password,
		connectString : dbConf.connectString
	},function(err,connection){
		if(err){
			console.log(err.message);
			return;
		}
		
		console.log('connection OK........');
		
		let sql="select * from member";
		connection.execute(sql,function(err2,result){
			console.log('rows:'+result.rows);
			disConn(connection);
		});
	});	
}
function disConn(connection){
	console.log('disconnection..........');
	connection.close(function(err){
		if(err){
			console.log(err.message);			
		}
	})
}
*/