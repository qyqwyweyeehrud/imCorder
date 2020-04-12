package bean;

import mybatis.ConnetTestDao;

public class ConnectTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ConnetTestDao dao = new ConnetTestDao();
		String a =dao.select("a");
		System.out.println(a);
	}

}
