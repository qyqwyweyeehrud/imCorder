package bean;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.BoardFactory;
import mybatis.BoardVo;

public class BoardMybatisDao {
	SqlSession sqlSession;//연결할때 가장 중요한 역할을한다
	
	public BoardMybatisDao() {
		sqlSession = BoardFactory.getFactory().openSession();//생성자에서 세션을 오픈함
	}
	public List<BoardVo> select(page p) {
		List<BoardVo> list = null;
		try {
			int totList = sqlSession.selectOne("board.count",p);
			p.setTotListSize(totList);
			p.pageCompute();
			list = sqlSession.selectList("board.select",p);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();//받드시 close해줘야함
			return list;
		}
	}
}
