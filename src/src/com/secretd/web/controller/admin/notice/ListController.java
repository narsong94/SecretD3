package src.com.secretd.web.controller.admin.notice;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.dao.NoticeDao;
import src.com.secretd.web.dao.jdbc.JdbcNoticeDao;
import src.com.secretd.web.entity.Notice;


@WebServlet("/admin/notice/list")
public class ListController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int page = 1; //疫꿸퀡�궚揶쏉옙		
		String  _page = request.getParameter("p"); 
		
		if(_page != null && !_page.equals(""))
			page=Integer.parseInt(_page);	
		
		String  _query = request.getParameter("title"); 
		String query = ""; 
		if(_query != null && !_query.equals(""))
			query=_query;

		int count=0;		
		List<Notice> list = null; 
		NoticeDao noticeDao = new JdbcNoticeDao();
		list = noticeDao.getList(page, query);
		count = noticeDao.getCount();		
		request.setAttribute("list", list);
		request.setAttribute("count", count);
		
		request.getRequestDispatcher("/WEB-INF/views/admin/notice/list.jsp").forward(request, response);
	}
}
