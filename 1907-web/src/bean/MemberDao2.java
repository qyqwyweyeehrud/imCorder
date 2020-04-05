package bean;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import jdk.nashorn.internal.runtime.ECMAException;
import sun.java2d.pipe.SpanShapeRenderer.Simple;

public class MemberDao2 {
	String upload = "C:/source/1907-web/WebContent/upload/";
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	Connection conn;
	public MemberDao2() {
		conn = DBConn.getConn();
	}
	//입력된 결과
	public String insert(MemberVo2 vo) {
		String msg = "회원정보가 정상적으로 저장되었습니다.";
		MemberPhoto p = null;
		
		List<MemberPhoto> list = vo.getPhotos();
		if(list.size()>0) {
			p =list.get(0);
		}
		try {
			String sql ="insert into member(mId,pwd,mName,rDate,grade)"
						+ " values(?,?,?,?,?)";
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmId());
			ps.setString(2, vo.getPwd());
			ps.setString(3, vo.getmName());
			ps.setString(4, sdf.format(vo.getrDate()));
			ps.setInt(5, vo.getGrade());
			
			int cnt = ps.executeUpdate();
			if(cnt>0) {
				
				
					if(p.oriFile!=null) {
						sql = "insert into member_photo(serial,oriFile,sysFile,mId,rDate)"
							+" values(seq_member_photo.nextval , ? , ?,?,?)";
						ps = conn.prepareStatement(sql);
						ps.setString(1, p.getOriFile());
						ps.setString(2, p.getSysFile());
						ps.setString(3, vo.getmId());
						ps.setString(4, sdf.format(vo.getrDate()));
						cnt = ps.executeUpdate();
						
						if(cnt>0) {
							conn.commit();
						}else {
							conn.rollback();
						}
						//throw new Exception();
					}
				
			}
			
		}catch(Exception e) {
			conn.rollback();
			msg = e.toString();
			
			
			File delFile = new File(upload+p.getSysFile());//오류나면 파일 업로드된거 삭제
			if(delFile.exists()) {
				delFile.delete();
			}
			
			
		}finally {
			try {
				conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			System.out.println(msg);
			return msg;
		}
	}
	
	//수정된 결과
	public String modify(MemberVo2 vo) {
		String msg="수정이 완료되었다";
		//무조건 파일은 업로드 되었을것이다 /문제는 있던파일이 업로딩 되면 똑같은 아이디 데이터가 사진2개가 될것인데, 엄데이트가된경우에는 기존파일을 찾아서 삭제해줘야한다. 수정을했다면 photos에 값이 있을것이다
		MemberPhoto mp = new MemberPhoto();
		String deleteFile = null;//이미지를 수정한경우 이전 파일을 찾아서 삭제할것이다
		int serial = 0;//파일명과 아이디를 복합명을해서 찾아야되는데 귀찮기 때문에 serial쓸거야
		List<MemberPhoto> list = vo.getPhotos();//사진정보가 있으면 값이 있을거고, 없으면 있을것이다
		if(list.size()>0) {//사진이 여기개면 리스트사이즈만큼 루핑
			mp = list.get(0);
		}
		
		String sql="";
		PreparedStatement ps =null;
		ResultSet rs =null;
		
		
		try {
			conn.setAutoCommit(false);
			//수정하기전 파일명을 가져올것임(삭제될 파일을 가지고올것이야)
			if(mp !=null) {//mp가 낫널이면 파일이 추가됫을것이다, 파일을 업로드한 결과가 mp에 적재될것이니까 파일이 추가됫을것이다//파일이없었다면 애초에 파일이 적재되지 않았을것이다
			//기존 row가있을때 update , 없으면 insert를 해야하기위한 기초작업
				sql = "select serial , sysFile from member_photo "
					+" where mId=? ";
				ps = conn.prepareStatement(sql);
				ps.setString(1, vo.getmId());
				rs = ps.executeQuery();
				if(rs.next()) {
					deleteFile = rs.getString("sysFile");
					serial = rs.getInt("serial");
					//신규파일을 추가하거나 업데이트를 해야되는데 기존에 있는 데이터가 있을수도있고 없을수도 있기에 (없으면 insert를 날려야함)
					
				}
			}
			//기본 정보 수정 /무조건 수정되었다고 생각하고 쿼리 날릴거야
			sql = "update member set mName=?,rDate=?,grade=?"
				+" where mId=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getmName());
			ps.setString(2, sdf.format(vo.getrDate()));
			ps.setInt(3, vo.getGrade());
			ps.setString(4, vo.getmId());
			
			int cnt = ps.executeUpdate();
			if(cnt<1) {//1보다 작을때 에러이다
				throw new Exception("기본 정보 수정중 오류발생");
			}
			
			//기본 사진 정보에 따른 분기를 할것이다
			if(mp!=null) {
				if(deleteFile==null) {//맨처음 이미지를 등록하지 않고 나중에 등록하는 경우
					//이 경우는 mp첨부파일이 있다는거지 select를해서 데이터를 가져왔는데 null이면 / 처음에 등록됬을때 사진등록은 안했다는거지 /insert를 해주면되
					sql = "insert into member_photo(serial,mId,rDate,oriFile,sysFile"
						+" values(seq_member_photo.nextval , ?,?,?,?) ";
					ps = conn.prepareStatement(sql);
					ps.setString(1, vo.getmId());
					ps.setString(2, sdf.format(vo.rDate));
					ps.setString(3, mp.getOriFile());
					ps.setString(4, mp.getSysFile());
					
					cnt = ps.executeUpdate();
					if(cnt<1) {
						throw new Exception("첨부파일 추가시 요류발생");
					}
				}else { //등록된 이미지를 수정하는경우
					//아니면 update를 해주면되
					sql = "update member_photo set rDate=? , sysFile=? , oriFile=?"
						+" where serial = ?";//반드시 serial로 //pk로하면 동일한데이터를 가지고있는 다른데이터는 사라지지않는다 즉,n개의 데이터가 모두 업데이트되버린다!!
					ps = conn.prepareStatement(sql);
					ps.setString(1, sdf.format(vo.getrDate()));
					ps.setString(2, mp.getOriFile());
					ps.setString(3, mp.getSysFile());
					ps.setInt(4, serial);
					cnt = ps.executeUpdate();
					if(cnt<1) {
						throw new Exception("첨부파일 수정시 오류발생");					
					}
				}
			}
			conn.commit();
		}catch(Exception e) {
			msg = e.getMessage();
			conn.rollback();
		}finally {
			if(deleteFile!=null) {
				delFile(deleteFile);//만약에 기본첨부파일이들어오면 널이들어온다 그러면 삭제하지않겟지 하지만 파일이 존재한다면 삭제하겠지				
			}
			return msg;		
		}
	}
	public void delFile(String fileName) {
		File file = new File(upload + fileName);
		if(file.exists()) {
			file.delete();
		}
	}
	
	
	
	//삭제된 결과
	public String delete(String mId , String pwd) {
		String msg = "자료가 정상적으로 삭제되었습니다";
		String findMid ="";
		String sysFile ="";
		int serial = 0;
		String sql="";
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			sql = "select M.mId , P.serial , P.sysFile "
				+" from member M left outer join member_photo P "
				+" on M.mId = P.mId "
				+" where M.mId=? and M.pwd=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			while(rs.next()) {
				findMid = rs.getString("mId");
				serial = rs.getInt("serial");
				sysFile =rs.getString("sysFile");
			}
			
			sql =" delete from member "
				+" where mId =? ";
			ps =conn.prepareStatement(sql);
			ps.setString(1, findMid);
			int cnt = ps.executeUpdate();
			if(cnt<1) {
				throw new Exception("member자료 삭제중 오류발생");
			}
			
			sql = "delete from member_photo "
				+" where serial=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, serial);
			cnt = ps.executeUpdate();
			if(cnt<1) {
				throw new Exception("사진테이블 삭제중 오류발생");
			}
			
			delFile(sysFile);
			
		}catch(Exception e) {
			
		}finally {
			return msg;		
		}
		
	}
	public String deletePhoto(String mId ,String pwd) {
		String msg ="사진이 정상적으로 삭제되었습니다";
		String findMid ="";
		String sysFile ="";
		int serial = 0;
		String sql="";
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			sql = "select M.mId , P.serial , P.sysFile "
					+" from member M left outer join member_photo P "
					+" on M.mId = P.mId "
					+" where M.mId=? and M.pwd=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			ps.setString(2, pwd);
			rs = ps.executeQuery();
			if(rs.next()) {
				serial = rs.getInt("serial");
				sysFile =rs.getString("sysFile");
			}
			sql = "delete from member_photo "
				+" where serial=?";
			ps = conn.prepareStatement(sql);
			ps.setInt(1, serial);
			int cnt = ps.executeUpdate();
			if(cnt<1) {
				throw new Exception("사진테이블 삭제중 오류발생");
			}
			
			delFile(sysFile);
			
		}catch(Exception e) {
			
		}finally {
			return msg;			
		}
	}
	
	//상세보기결과 ,db에서 select된 정보 리턴
	public MemberVo2 view(String mId) {
		MemberVo2 vo = new MemberVo2();
		String sql="";
		PreparedStatement ps;
		ResultSet rs;
		List<MemberPhoto> list = new ArrayList<MemberPhoto>();
		try {
			sql = " select mId ,pwd ,mName , rDate ,grade from member "
				+" where mId= ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			rs = ps.executeQuery();
			if(rs.next()) {
				vo.setmId(rs.getString("mId"));
				vo.setPwd(rs.getString("pwd"));
				vo.setrDate(rs.getDate("rDate"));
				vo.setGrade(rs.getInt("grade"));
				vo.setmName(rs.getString("mName"));
			}
			sql = "select serial , sysFile ,oriFile from member_photo"
				+" where mId=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mId);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberPhoto mp = new MemberPhoto();
				mp.setSerial(rs.getInt("serial"));
				mp.setOriFile(rs.getString("OriFile"));
				mp.setSysFile(rs.getString("sysFile"));
				
				list.add(mp);
			}
			vo.setPhotos(list);
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			return vo;
			
		}
	}
	
	//db의 모든 정보 조회후 list로 반환
	public List<MemberVo2> select(page p){//페이지라고하는 파라메터를 받겠다
		//p = new page();
		List<MemberVo2> list = new ArrayList<MemberVo2>();
		//첫번째 페이지의 유입경로는 findStr과 page 를 어떻게 할것이냐 고민 // page의 필드에있는 nowPage=1,findStr=""를 사용해서 하겠다.
		//다은페이지 갔다가 올때 링크를가지고온게아니라 submit으로 돌아왔기에 고민
		
		//검색어로 검색된 전체사이즈 그리고 nowPage를 가지고 page의 pageComput를 호출하게되면(page가 생성되는 순간) page안에 있는 모든데이터가 계산될것이다
		//검색어로 들어온 건수 를 가지고와야 전체 데이터가 계산될수있다. 쿼리를 만들겠다.
		String sql = null;//그냥 하면되지만 쿼리는 2번날려야되기때문에 만들어놓겟다
		PreparedStatement ps =null;//그냥 하면되지만 쿼리는 2번날려야되기때문에 만들어놓겟다
		ResultSet rs =null;//그냥 하면되지만 쿼리는 2번날려야되기때문에 만들어놓겟다
		int totList = 0;//총 리스트양 초기화
		
		try {
			//전체건수를 가져올거야
			sql = "select count(mId) cnt from member "//데이터 건수만찍을건데 모든컬럼을 가져온다면 데이터베이스에 과부화를 줄수있다
				+" where mId like ? or mName like ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+p.getFindStr()+"%");
			ps.setString(2, "%"+p.getFindStr()+"%");
			rs = ps.executeQuery();
			if(rs.next()) {
				totList = rs.getInt("cnt");
			}
			p.setTotListSize(totList);
			p.pageCompute();
			
			sql =" select * from ( "
				+" 	select rownum rn , A.* from ("//row 넘버를 틀어지지 않게하기위해서
				+" 		select mId ,pwd,mName , to_char(rDate,'rrrr-MM-dd') rDate , grade"//실제 데이터를 select하는 문장
				+" 		from member "
				+" 		where mId like ? or mName like ? "
				+" 		order by mName) A "		
				+" ) where rn between ? and ?";//데이터를 잘라오는 목적이다
			ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+p.getFindStr()+"%");
			ps.setString(2, "%"+p.getFindStr()+"%");
			ps.setInt(3, p.getStartNo());
			ps.setInt(4, p.getEndNo());
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberVo2 vo = new MemberVo2();
				vo.setmId(rs.getString("mId"));
				vo.setmName(rs.getString("mName"));
				vo.setPwd(rs.getNString("pwd"));
				vo.setGrade(rs.getInt("grade"));
				vo.setrDate(sdf.parse(rs.getString("rDate")));
				list.add(vo);
			}
			
			/*
			System.out.println("totSize : "+p.getTotListSize());
			System.out.println("startPage :" +p.getStartPage());
			System.out.println("endPage :" +p.getEndPage());
			System.out.println("startNo:"+p.getStartNo());
			System.out.println("endNo:"+p.getEndNo());
			*/
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			return list;
			
		}
		
	}
}
























