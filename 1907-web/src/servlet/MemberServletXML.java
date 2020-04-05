package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean1.MemberDao;
import bean1.MemberVo2;

//특징!!다음에 변경할때 xml파일의 .nhn만 바꾸면 되지만 xml파일의 서블렛을 계속 추가해줘야한다
public class MemberServletXML extends HttpServlet{
//이 클래스를 호출해줄수있는곳이 필요한데 그게 META-INF안의 xml파일 이다
// 그 xml파일이 잘못 코딩된다면 홈페이지가 모두 죽는다 주의해야함
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String rDate = request.getParameter("rDate");
		String grade = request.getParameter("grade");
		
		System.out.println("doPost");
		System.out.println(mId);
		System.out.println(mName);
		System.out.println(rDate);
		System.out.println(grade);
		
		resp.setContentType("text/html;charset=utf-8");//콘텐트 타입을 선언해주고 라이터를해야 오류가 안난다
		PrintWriter out = resp.getWriter();
		out.print("<ul>");
		out.print("<li>mId : "+mId +"</li>");
		out.print("<li>mName :"+mName+"</li>");
		out.print("<li>rDate :" + rDate+"</li>");
		out.print("<li>grade :" + grade+"</li>");
		out.print("</ul>");
		
		MemberVo2 vo = new MemberVo2();
		vo.setmId(mId);
		vo.setmName(mName);
		vo.setrDate(rDate);
		vo.setGrade(Integer.parseInt(grade));
		
		MemberDao dao = new MemberDao();
		String msg = dao.insert2(vo);
		out.print("<h4>"+msg+"</h4>");
		
		out.close();//close필수
	}

}
