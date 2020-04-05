package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.FileUpload;
import bean.MemberDao2;
import bean.MemberPhoto;
import bean.MemberVo2;
import bean.page;
@WebServlet("*.mm") //오버로딩 필수 insert를 호출하겟다? insert.mm
public class MemberServlet extends HttpServlet{//요청정보와 요청결과를 여기에 던져준다!!!!!!!
	String url ="index.jsp?inc=./jsp_member/index_jsp_member.jsp&inc2=./jsp_member";
	


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		select(req,resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String temp = req.getRequestURI();//  /insert.mm 이 나온다
		int pos = temp.lastIndexOf("/");
		String tempUrl = temp.substring(pos);
		switch(tempUrl) {
			case "/insert.mm":
				insert(req,resp);
				break;
			case "/insertR.mm":
				insertR(req,resp);
				break;
			case "/modify.mm":
				modify(req,resp);
				break;
			case "/modifyR.mm":
				modifyR(req,resp);
				break;
			case "/view.mm":
				view(req,resp);
				break;
			case "/deleteR.mm":
				deleteR(req,resp);
				break;
			case "/select.mm":
				select(req,resp);
				break;
			case "/deleteP.mm":
				deleteP(req,resp);
				break;
		}
	}
	public void insert(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String findStr = req.getParameter("findStr");
		String path = url + "/insert.jsp?findStr="+findStr;
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void insertR(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String path = url +"/insert_result.jsp";
		
		FileUpload upload = new FileUpload(req, resp);
		if(upload.uploadFormCheck()) {
			MemberVo2 vo = upload.uploading();
			List<MemberPhoto> list = vo.getPhotos();
			
			MemberDao2 dao = new MemberDao2();
			String msg = dao.insert(vo);
			req.setAttribute("msg", msg);
			
			for(MemberPhoto p : list) {
				System.out.println(p.getOriFile());
				System.out.println(p.getSysFile());
			}
			
		}else {
			System.out.println("err");
			resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
		}
		
		path +="?nowPage="+req.getAttribute("nowPage");
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);//필수!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 포워드에서 다 넘겨준다고 하네
	}
	public void modify(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String path = url +"/modify.jsp";
		
		MemberDao2 dao = new MemberDao2();
		MemberVo2 vo = dao.view(req.getParameter("mId"));
		req.setAttribute("vo", vo);
		
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void modifyR(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String path = url + "/modify_result.jsp";
		String msg = "데이터가 정상적으로 수정되었씁니다";
		
		FileUpload upload = new FileUpload(req, resp);//파일업로드작업//폼에있던 req 정보가 모두 이쪽으로 넘어간다 /만약에 앵크타입이 없다면 req.getParameter("mId")가 가능하겠지만, 존재한다면 null이 나온다 /그래서 파일업로드를가보면 파싱한 코드가 하나있는데 그거덕에 값을 하나씩 가져와서 쓸수 있었던것
		if(upload.uploadFormCheck()) {//체크후 정상일때 하겠다
			MemberVo2 vo = upload.uploading();
			MemberDao2 dao = new MemberDao2();
			msg = dao.modify(vo);
		}
		
		req.setAttribute("msg", msg);
		
		path +="?nowPage"+req.getAttribute("nowPage");
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void view(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String path = url + "/view.jsp";
		
		MemberDao2 dao = new MemberDao2();
		MemberVo2 vo = dao.view(req.getParameter("mId"));
		req.setAttribute("vo", vo);
		
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void deleteR(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		String path = url + "/delete_result.jsp";
		String msg ="데이터가 정삭적으로 삭제되었습니다";
		
		String mId = req.getParameter("mId");
		String pwd = req.getParameter("pw");
		
		MemberDao2 dao = new MemberDao2();
		msg = dao.delete(mId,pwd);
		
		req.setAttribute("msg", msg);
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void deleteP(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException{
		String path = url + "/delete_result.jsp";
		String msg = "첨부파일이 정상적으로 삭제되었습니다";
		
		String mId = req.getParameter("mId");
		String pwd = req.getParameter("pw");
		
		MemberDao2 dao = new MemberDao2();
		msg = dao.deletePhoto(mId, pwd);
		
		req.setAttribute("msg", msg);
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void select(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
		MemberDao2 dao = new MemberDao2();
		int nowPage = 1;
		String findStr="";
		if(req.getParameter("nowPage")!=null) {
			nowPage = Integer.parseInt(req.getParameter("nowPage"));
		}
		if(req.getParameter("findStr")!=null) {
			findStr = req.getParameter("findStr");
		}
		page p =new page();
		p.setNowPage(nowPage);
		p.setFindStr(findStr);
		
		List<MemberVo2> list = dao.select(p);
		
		req.setAttribute("list", list);
		req.setAttribute("p", p);
		
		String path = url + "/select.jsp";
		RequestDispatcher rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);//포워딩 시켯기때문에 데이터베이스에서 처리된 dao결과가 select로 넘어간다
	}
}
