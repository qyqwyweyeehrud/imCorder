package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BoardMybatisDao;
import mybatis.FileUpload;
import bean.page;
import mybatis.AttVo;
import mybatis.BoardVo;

@WebServlet("*.myba")
public class BoardServlet extends HttpServlet{
	HttpServletRequest req;
	HttpServletResponse resp;
	String url = "index_mybatis.jsp?inc=./mybatis/";
	RequestDispatcher rd;
	
	BoardMybatisDao dao;
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		this.req = req;
		this.resp = resp;
		dao = new BoardMybatisDao();
		select();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		this.req = req;
		this.resp = resp;
		int pos = req.getRequestURI().lastIndexOf("/")+1;
		String tempUrl = req.getRequestURI().substring(pos);
		dao = new BoardMybatisDao();
		
		switch(tempUrl) {
		case "select.myba":
			select();
			break;
		case "view.myba":
			view();
			break;
		case "insert.myba":
			insert();
			break;
		case "insertR.myba":
			insertR();
			break;
		case "modify.myba":
			modify();
			break;
		case "modifyR.myba":
			modifyR();
			break;
		case "delete.myba":
			deleteR();
			break;
		case "repl.myba":
			repl();
			break;
		case "replR.myba":
			replR();
			break;
		}
	}
	public void select() throws ServletException, IOException{
		String path = url + "select.jsp";
		
		page p = new page();
		p.setFindStr(req.getParameter("findStr"));
		if(req.getParameter("nowPage")!=null &&req.getParameter("nowPage")!="") {
			p.setNowPage(Integer.parseInt(req.getParameter("nowPage")));
		}
		List<BoardVo> list = dao.select(p);
		req.setAttribute("list", list);
		req.setAttribute("p", p);
		
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
		
	}
	public void view() throws ServletException, IOException{
		String path = url + "view.jsp";
		int serial = Integer.parseInt(req.getParameter("serial"));
		
		BoardVo vo = dao.view(serial);
		List<AttVo> attList = dao.getAttList(serial);
		
		req.setAttribute("vo", vo);
		req.setAttribute("attList", attList);
		
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void insert() throws ServletException, IOException{
		String path = url + "insert.jsp";
		
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void insertR() throws ServletException, IOException{
		String path = url + "insert_result.jsp";
		FileUpload fu = new FileUpload(req, resp);
		HttpServletRequest newReq = fu.uploading();
		//기본저그로 리퀘스트를 세로 만들수 밖에 없는게 -> req.setParameter를 추가할수없다 readonlt로 되있기때문에 할수있는게 attribute밖에 없다 그래서 이결과를 newReq로만든이유가 설정을 사용할수 없기때문이다
		BoardVo vo = (BoardVo)newReq.getAttribute("vo");
		List<AttVo> attList = (List<AttVo>)newReq.getAttribute("attList");
		
		String msg = dao.insert(vo,attList);
		newReq.setAttribute("msg", msg);
		
		rd = newReq.getRequestDispatcher(path);
		rd.forward(newReq, resp);
		
	}
	public void modify() throws ServletException, IOException{
		String path = url + "modify.jsp";
		int serial = Integer.parseInt(req.getParameter("serial"));
		BoardVo vo = dao.view(serial);
		List<AttVo> attList = dao.getAttList(serial);
		req.setAttribute("vo", vo);
		req.setAttribute("attList", attList);
		
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void modifyR() throws ServletException, IOException{
		String path = url + "modify_result.jsp";
		
		FileUpload fu = new FileUpload(req,resp);
		HttpServletRequest newReq = fu.uploading();
		
		BoardVo vo = (BoardVo)newReq.getAttribute("vo");
		List<AttVo> attList = (List<AttVo>)newReq.getAttribute("attList");
		List<AttVo> delList = (List<AttVo>)newReq.getAttribute("delList");
		
		String msg = dao.modify(vo , attList , delList);
		newReq.setAttribute("msg", msg);
		
		rd = newReq.getRequestDispatcher(path);
		rd.forward(newReq, resp);
	}
	public void deleteR() throws ServletException, IOException{
		String path = url + "delete_result.jsp";
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void repl() throws ServletException, IOException{
		String path = url + "repl.jsp";
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	public void replR() throws ServletException, IOException{
		String path = url + "repl_result.jsp";
		rd = req.getRequestDispatcher(path);
		rd.forward(req, resp);
	}
	
}
