package bean;

import java.io.File;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import mybatis.AttVo;
import mybatis.BoardFactory;
import mybatis.BoardVo;
import mybatis.FileUpload;

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
	public String insert(BoardVo vo , List<AttVo> attList) {
		String msg = "게시글 입력 완료!!";
		try {
			int cnt = sqlSession.insert("board.insert",vo);
			if(cnt<1) {
				throw new Exception("게시문 입력중 오류 발생");
			}
			for(AttVo attVo : attList) {
				cnt = sqlSession.insert("board.insert_att",attVo);
				if(cnt<1) {
					throw new Exception("첨부데이터 저장시 오류 발생");
				}
			}
			
			sqlSession.commit();
		}catch(Exception e) {
			e.printStackTrace();
			msg =e.getMessage();
			sqlSession.rollback();
			delFile(attList);
		}finally {
			sqlSession.close();
			return msg;
		}
		
	}
	
	public BoardVo view(int serial) {
		BoardVo vo = null;
		
		try {
			vo = sqlSession.selectOne("board.view",serial);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			//세션 클로즈 없이 / 또 sqlSession을 오픈해야하기때문에 
			return vo;
		}
	}
	public List<AttVo> getAttList(int pserial){
		List<AttVo> attList = null;
		
		try {
			attList = sqlSession.selectList("board.list_att",pserial);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
			return attList;
		}
	}
	
	public String modify(BoardVo vo , List<AttVo> attList , List<AttVo> delList) {
		String msg="수정 완료!!";
		System.out.println("serial" + vo.getSerial());
		System.out.println("id " + vo.getId());
		System.out.println("pserial" + vo.getpSerial());
		System.out.println("date" + vo.getmDate());
		System.out.println("subject"+vo.getSubject());
		System.out.println("content" + vo.getContent());
		
		
		try {
			//본문글 수정 작업
			int cnt = sqlSession.update("board.update",vo);
			if(cnt<1) {
				throw new Exception("본문글 삭제중 오류발생");
			}
			System.out.println("1완료");
			//본문글 수정이 정상적으로 이루어지면 첨부데이터 를 추가 // boardAtt에 추가할수없다
			
			for(AttVo attVo : attList) {
				attVo.setSerial(vo.getSerial());
				System.out.println("oriFile" + attVo.getOriFile());
				System.out.println("sysFile" + attVo.getSysFile());
				System.out.println("pserial" + attVo.getPserial());
				System.out.println("serial" + attVo.getSerial());
				
				cnt = sqlSession.insert("board.att_insert2",attVo);
				if(cnt<1) {
					
					throw new Exception("첨부 데이터 정보 수정중 오류 발생");
				}
			}
			System.out.println("2완료");
			//boardAtt에 삭제파일 정보를 제거
			for(AttVo attVo : delList) {
				cnt = sqlSession.delete("board.att_delete",attVo);
				if(cnt<1) {
					throw new Exception("첨부 데이터 정보 삭제중 오류 발생");
				}
					
			}
			System.out.println("3완료");
			//파일 삭제작업
			delFile(delList);
			
			sqlSession.commit();
		}catch(Exception e) {
			delFile(attList);//파일이 업로드가 되어있는데 본문업데이트추가하는작업중에 오류가 낫다면 삭제를 해야하기 때문에
			
			e.printStackTrace();
			msg = e.getMessage();
			sqlSession.rollback();
		}finally {
			sqlSession.close();
			return msg;
		}
	}
	
	
	
	
	
	
	
	
	//insert나 modify에서 sql 오류가 발생할때 , 삭제할 때 공통 사용
	public void delFile(List<AttVo> delList) {
		for(AttVo attVo : delList) {
			File f = new File(FileUpload.upload + attVo.getSysFile());
			if(f.exists()) {
				f.delete();
			}
			
		}
	}
}
