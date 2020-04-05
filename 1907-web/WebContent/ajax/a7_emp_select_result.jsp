<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="bean.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String findStr = request.getParameter("findStr");
	
	Connection conn = DBConn.getConn();
	String sql =" select E.employee_id eid, to_char(E.salary,'999,999') sal, E.first_name fname, E.department_id did, nvl(D.department_name,' ') dname "
		       +" from employees E left outer join departments D "
		       +" on E.department_id = D.department_id "
		       +" where lower(E.first_name) like lower(?) "
			   +" order by first_name ";
	PreparedStatement ps = conn.prepareStatement(sql);
	int id = 0;
	try{
		id=Integer.parseInt(findStr);
	}catch(Exception ex){}
	ps.setString(1,"%"+findStr+"%");
	ResultSet rs = ps.executeQuery();
	StringBuilder sb = new StringBuilder();
	sb.append("[");
	while(rs.next()){
		String str = String.format("{'id':'%s','sal':'%s','mname':'%s','did':'%s','dname':'%s'},", rs.getInt("eid") , rs.getString("sal") , rs.getString("fname") , rs.getInt("did") , rs.getString("dname"));
		sb.append(str);
	};
	String data = sb.toString();
	data = data.replaceAll("\'","\"");
	if(data.length()>1){//데이터가 검색이되면
		data = data.substring(0,data.length()-1);		
	};
	data +="]";
	out.print(data);
%>