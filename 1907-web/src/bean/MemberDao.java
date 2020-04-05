package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberDao {
	Connection conn;
	String form = "{'mid':'%s','pwd':'%s','rdate':'%s','grade':'%s'},";
	public MemberDao() {
		conn = DBConn.getConn();
	}
	
	public String select(String findStr) {
		String data ="";
		StringBuilder json = new StringBuilder();
		json.append("");
		String sql = "select mid , pwd , to_char(rdate, 'rrrr-mm-dd') rda, grade from member where mid like ? or pwd like ?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, "%"+findStr+"%");
			ps.setString(2, "%" + findStr + "%");
			ResultSet rs = ps.executeQuery();
			
			json.append("[");
			while(rs.next()) {
				String mid = rs.getString("mid");
				String pwd = rs.getString("pwd");
				String rdate = rs.getString("rda");
				int grade = rs.getInt("grade");
				String mName = rs.getString("mName");
				
				MemberVo vo = new MemberVo(mid,pwd,rdate,grade,mName);
				String str = String.format(form,vo.getMid(),vo.getPwd(),vo.getRdate(),vo.getGrade());
				json.append(str);
			};
			data = json.toString();
			data = data.replaceAll("\'", "\"");
			if(data.length()>-1) {
				data = data.substring(0,data.length()-1);
			}
			data +="]";
			
			rs.close();
			ps.close();
			conn.close();
		}catch(Exception ex) {
			
		}
		return data;
	}
	public boolean login(MemberVo vo) {
		boolean result = false;
		String sql="select mId,pwd from member where mid = ? and pwd =?";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, vo.getMid());
			ps.setString(2, vo.getPwd());
			System.out.println(vo.getMid() + vo.getPwd());
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				result = true;
			}
		}catch(Exception e) {
			
		}finally {
			return result;
		}
	}
}

