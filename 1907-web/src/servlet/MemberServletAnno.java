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

//특징!! .anno가 바뀌면  밑에있는 .anno만 바꾸면되지만 굳이 자바파일을 열어서 바꿔야하는 단점이있다
@WebServlet("*.anno") //웹서버에서 .anno가오면 아래의 클래스를 실행하라
//웹브라우저에서 전송된데이터를 구별해서 post타입일때는dopost get일땐 doget타입으로 만들어서 해라
public class MemberServletAnno extends HttpServlet{//웹서버에 자동으로 로딩되진 않는다

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
		String path = "/jsp/insert_result.jsp";
		ServletContext cont = getServletContext();//HttpServlet이 가지고있는 Context이다 extends했기에 사용가능
		RequestDispatcher disp = cont.getRequestDispatcher(path);//내가 로딩해야될 파일명 지정하면됨
		request.setAttribute("msg", msg);
		request.setAttribute("mId", mId);
		disp.forward(request, resp);
		
	}

}
