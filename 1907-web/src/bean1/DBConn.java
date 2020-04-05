package bean1;
import java.sql.Connection;
import java.sql.DriverManager;
public class DBConn {
	public static Connection getConn() {
		return getConn("hr", "hr");
	}
	public static Connection getConn(String id, String pwd) {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbUser = "hr";
		String dbPwd = "hr";
		Connection conn = null;
	try {
		Class.forName(driver).newInstance();
		conn = DriverManager.getConnection(url, dbUser, dbPwd);
	}catch(Exception ex) {
		ex.printStackTrace();
	}
	return conn;
	}
	public static void main(String[] args) {
	 //DBConn.getConn("m1907", "m1907");
	 DBConn.getConn();
	}
}
