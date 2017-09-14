package src.com.secretd.web.controller.member.faq;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.dao.FaqDao;
import src.com.secretd.web.dao.jdbc.JdbcFaqDao;
import src.com.secretd.web.entity.Faq;

@WebServlet("/member/faq/list")
public class ListController extends HttpServlet{
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	FaqDao faqDao = new JdbcFaqDao();

	List<Faq> list = faqDao.get();
	
	request.setAttribute("faqList", list);
	
	request.getRequestDispatcher("/WEB-INF/views/member/faq/list.jsp").forward(request, response);
}
}
