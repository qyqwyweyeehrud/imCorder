package mongo;

import java.util.List;
import java.util.regex.Pattern;

import javax.swing.plaf.basic.BasicListUI;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;

public class MongoMember {
	DB db;
	DBCollection dbc;
	
	public MongoMember() {
		MongoClient client = new MongoDBConn().getClient();//DBconn.getconn하는거랑 같다
		db = client.getDB("m1907");//db를 만듦
		dbc = db.getCollection("member");
		
	}
	public String insert(DBObject obj) {
		String msg ="";
		try {
			dbc.insert(obj);
			msg = "회원 정보가 정상적으로 등록되었습니다";
		}catch(Exception e) {
			msg = "저장중 오류발생"+e.toString();
		}finally {
			return msg;
		}
	}
	public String modify(DBObject mId,DBObject obj) {
		String msg="";
		BasicDBObject query = new BasicDBObject();
		query.put("$set", obj);
		
		try {
			dbc.update(mId, query);
			msg = obj.get("mId")+" 님의 정보수정이 완료되었습니다";
		}catch(Exception e) {
			msg = "수정중 오류가 발생" + e.toString();
		}finally {
			return msg;
		}
	}
	public String delete(String mId) {
		String msg="";
		BasicDBObject obj = new BasicDBObject();
		obj.put("mId", mId);
		try {
			dbc.remove(obj);
			msg="회원 정보가 정상적으로 삭제되었습니다";
		}catch(Exception e) {
			msg="정보 삭제중 오류가 발생"+e.toString();
		}finally {
			return msg;
		}
	}
	public DBObject view(String mId) {
		DBObject o = null;
		BasicDBObject obj = new BasicDBObject();
		obj.put("mId", mId);
		DBCursor cursor = dbc.find(obj);
		if(cursor.hasNext()) {
			o = cursor.next();
		}
		return o;
	}
	public List<DBObject> select(String findStr) {
		String rValue ="";
		DBCursor cursor = null;//모든데이터가 커서로 들어올 것이다 
		if(findStr==null) {
			cursor = dbc.find();
		}else {
			BasicDBObject filter1 = new BasicDBObject();
			BasicDBObject filter2 = new BasicDBObject();
			BasicDBList or = new BasicDBList();
			
			filter1.put("mName",Pattern.compile(findStr));// >> {mId:/findStr/}
			filter2.put("mId",Pattern.compile(findStr));// >> {mName:/findStr/}
			
			or.add(filter1);
			or.add(filter2);
			
			BasicDBObject query = new BasicDBObject(); // 전체의 쿼리는 만드는 오브젝트
			query.put("$or", or);// >> $or : [filter1,filter1 ]
			
			cursor = dbc.find(query);// >> db.member.find($or : [{mId:/findStr/},{mName:/findStr/} ] );
			
		}
		
		return cursor.toArray();
	}
	
	public static void main(String[] args) {
		MongoMember mm = new MongoMember();
		// member collection의 모든 데이터를 조회
		List<DBObject> json = mm.select(null);
		// member collection의 'mId'='a001'인 데이터를 조회
		json = mm.select("a");
	}
}
