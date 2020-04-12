package mybatis;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import bean.page;

public class BoardMybatis {
	SqlSession sqlSessoin; //JAVA의 Connection역할을 한다
	
	public BoardMybatis() {
		sqlSessoin = BoardFactory.getFactory().openSession();//board의 select를 바로 실행 시킬수있는 작업이
	}
	
	public List<BoardVo> select(page p){
		List<BoardVo> list = null;
		try {
			//p.setFindStr("어");
			list = sqlSessoin.selectList("board.select1",p);
			
			for(BoardVo vo : list) {
				System.out.println(vo.getId());
				System.out.println(vo.getSubject());
				System.out.println(vo.getmDate());
				System.out.println("-----------------------");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSessoin.close();//닫아주지않으면 리소스가 뭐해져 안됨
			return list;
		}
	}
	public static void main(String[] args) {
		BoardMybatis bm = new BoardMybatis();
		page p = new page();
		p.setFindStr("어");
		List<BoardVo> list = bm.select(p);
		for(BoardVo vo : list) {
			System.out.println(vo.getSubject());
		}
	}
}
