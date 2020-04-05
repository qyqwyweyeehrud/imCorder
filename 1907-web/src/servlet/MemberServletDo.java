package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean1.MemberDao;
import bean1.MemberVo2;

//특징!! .anno가 바뀌면  밑에있는 .anno만 바꾸면되지만 굳이 자바파일을 열어서 코드를 바꿔야하는 단점이있다
@WebServlet("*.do") 
public class MemberServletDo extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String mId = request.getParameter("mId");
		String mName = request.getParameter("mName");
		String rDate = request.getParameter("rDate");
		String grade = request.getParameter("grade");
		
		resp.setContentType("text/html;charset=utf-8");//콘텐트 타입을 선언해주고 라이터를해야 오류가 안난다
		
		
		MemberVo2 vo = new MemberVo2();
		vo.setmId(mId);
		vo.setmName(mName);
		vo.setrDate(rDate);
		vo.setGrade(Integer.parseInt(grade));
		
		MemberDao dao = new MemberDao();
		String msg = dao.insert2(vo);
		
		//실행결과를 특정 페이지로 전달
		String path = "/index.jsp?inc=/jsp/index.jsp&inc2=/jsp/insert_result_do.jsp";
		ServletContext cont = getServletContext();//HttpServlet이 가지고있는 Context이다 extends했기에 사용가능
		RequestDispatcher disp = cont.getRequestDispatcher(path);//내가 로딩해야될 파일명 지정하면됨
		request.setAttribute("msg", msg);
		request.setAttribute("mId", mId);
		disp.forward(request, resp);
		
	}

}
