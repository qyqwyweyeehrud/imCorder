package mybatis;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class DynamicSql {
	SqlSession session; 
	
	public DynamicSql() {
		
	}
	
	
	public void ifTest() {
		session = BoardFactory.getFactory().openSession();
		
		String findStr = "12";
		List<BoardVo> list = session.selectList("dynamic.if_test", findStr);
		System.out.println("------------------if1---------------------");
		for(BoardVo vo : list) {
			System.out.println(vo.getSerial() + "-" + vo.getSubject());
		}
		
		findStr = null;
		list = session.selectList("dynamic.if_test", findStr);
		System.out.println("-------------------if2--------------------");
		for(BoardVo vo : list) {
			System.out.println(vo.getSerial() + "-" + vo.getSubject());
		}
		
		session.close();
	}
	public void chooseTest() {
		session = BoardFactory.getFactory().openSession();
		
		String findStr ="s";
		List<BoardVo> list = session.selectList("dynamic.choose_test",findStr);
		System.out.println("---------------choose1--------------------");
		for(BoardVo vo : list) {
			System.out.println(vo.getSerial() + "-" + vo.getSubject());
		}
		
		findStr ="c";
		list = session.selectList("dynamic.choose_test",findStr);
		System.out.println("---------------choose2--------------------");
		for(BoardVo vo : list) {
			System.out.println(vo.getSerial() + "-" + vo.getSubject());
		}
		
		findStr ="";
		list = session.selectList("dynamic.choose_test",findStr);
		System.out.println("---------------choose3--------------------");
		for(BoardVo vo : list) {
			System.out.println(vo.getSerial() + "-" + vo.getSubject());
		}
		
		session.close();
	}
	public void whereTest() {
		session = BoardFactory.getFactory().openSession();
		
		// <where> . . . </where>
		// 만약에 만족하는 데이터ㅏ 없다면 불필요한 where절을 생략해줌
		// 만약에 <where> 안에 시작이 and 나 or일때 불필요한 and . or 인 경우 생략
		
		int cnt=0;
		BoardVo vo = new BoardVo();
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt 1 = "+cnt);
		
		vo.setSerial(211);
		vo.setId(null);
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt 2 = "+cnt);
		
		vo.setId("hong");
		vo.setSerial(0);
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt 3 = "+cnt);
		
		vo.setSerial(211);
		vo.setId("hong");
		cnt = session.selectOne("dynamic.where_test", vo);
		System.out.println("cnt 4 = "+cnt);
		
		session.close();
	}
	public void setTest() {
		session = BoardFactory.getFactory().openSession();
		
		// <set> . . . </set>
		// - update 절의 set절을 동적으로 생성
		// - 불필요한 , 등을 제거하는 기능
		int cnt =0;
		BoardVo vo = new BoardVo();
		vo.setSubject("동적 sql로 바꾼 제목");
		vo.setContent(null);
		vo.setSerial(200);
		cnt = session.update("dynamic.set_test",vo);
		System.out.println("cnt 1 : " + cnt);
		
		vo.setSubject("동적 sql로 바꾼 제목");
		vo.setContent("동적 sql로 바꾼 내용");
		vo.setSerial(200);
		cnt = session.update("dynamic.set_test",vo);
		System.out.println("cnt 2 : " + cnt);
		
		session.commit();
		session.close();
	}
	public void trimTest() {
		session = BoardFactory.getFactory().openSession();
		
		// <where> , <set> 의 요소보다 다양한 특정 요소들을 추가하거나 제거 할 수 있다.
		// <trim prefix ='앞에 붙일 단어' 
		//		 suffix ='뒤에 붙일 단어'  
		//		 prefixOverrides ='제거할 단어1 | 제거할 단어2 ...'  
		//		 suffixOverrides = '뒤에서 제거할 단어1 | 뒤에서 제거할 단어2 ...'
		//	>	
		//</trim>
		
		BoardVo vo = new BoardVo();
		vo.setSubject("4");
		int cnt = session.selectOne("dynamic.trim_test",vo);
		System.out.println("trim cnt = " + cnt);
		
		session.close();
	}
	public void foreachTest() {
		session = BoardFactory.getFactory().openSession();
		
		/*
		 * <foreach collection = 'collection' item='변수' index='key' 
		 * 			open  	 = '반복하기 전에 붙일 문자'
		 * 			close 	 = '반복 후 붙일 문자'
		 * 			separator= 'item사이에 끼워넣을 구분자 기호'
		 * 			>
		 * </foreach>
		 *  -- index : collection의 종류가 map이면 key 값이고 ,List 면 index 값
		 *  -- item : collection의 종류가 map이면 value 값이고 , List 면 value 값
		 */
		
		session.close();
	}
	
	public static void main(String[] args) {
		DynamicSql ds = new DynamicSql();
		//ds.ifTest();
		//ds.chooseTest();
		//ds.whereTest();
		//ds.setTest();
		ds.trimTest();
	}

}
