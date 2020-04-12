package mybatis;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.DBConn;

public class ConnetTestDao {
	Connection conn;
	public ConnetTestDao() {
		conn = DBConn.getConn();
	}
	
	public String select(String a) {
		String result = "";
		String sql = "select * from board";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				result = "연결 됬는데?";
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			return result;
			
		}
		
	}
}
