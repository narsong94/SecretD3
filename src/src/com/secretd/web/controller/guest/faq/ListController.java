package src.com.secretd.web.controller.guest.faq;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.dao.FaqDao;
import src.com.secretd.web.dao.NoticeDao;
import src.com.secretd.web.dao.jdbc.JdbcFaqDao;
import src.com.secretd.web.dao.jdbc.JdbcNoticeDao;
import src.com.secretd.web.entity.Faq;
import src.com.secretd.web.entity.NoticeView;

@WebServlet("/guest/faq/list")
public class ListController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String  _query = request.getParameter("number"); 
		String query = ""; 
		if(_query != null && !_query.equals(""))
			query=_query;

		FaqDao faqDao = new JdbcFaqDao();

		List<Faq> list = null;
		list = faqDao.get();
		
		request.setAttribute("list", list);
		
		request.getRequestDispatcher("/WEB-INF/views/guest/faq/list.jsp").forward(request, response);
	}
}
