<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="bean.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//자바영역//자바코트를 쓰려면 스클립트영역을 만들면된다
	//서버로 전달해서 처리결과를 가져오는역할
	//서버 영역이기 때문에 1,2,3,행 빼고는 다쓸수있지만 body영역에 일반적으로쓴다 (html의 연장성이다 라고 생각하기때문에)
	Connection conn = DBConn.getConn();
	String sql="select * from employees";
	PreparedStatement ps = conn.prepareStatement(sql);
	ResultSet rs = ps.executeQuery();
	while(rs.next()){
		String str = String.format("%s,%s,%s\n",rs.getString("employee_id"),rs.getString("first_name"),rs.getInt("salary"));
		out.print(str);
		//out.print(rs.getString("first_name"));//first_name만 찍히는게 아니다 소스보기를 해보면 데이터가 html태그들이 같이 찍히기때문에 오류가날것이다
		//반환 유형이 html타입이 아니라면 저 불필요한 태그들을 없애야한다.
		//데이터가 내가원하는 다른유형으로 parsing할때만 위에 html태그들을 모두 지워줘야한다
	}
%>
