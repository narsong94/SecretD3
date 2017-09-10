package src.com.secretd.web.controller.guest.letter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.secretd.web.dao.LetterDao;
import src.com.secretd.web.dao.NoticeDao;
import src.com.secretd.web.dao.jdbc.JdbcLetterDao;
import src.com.secretd.web.dao.jdbc.JdbcNoticeDao;

@WebServlet("/guest/letter/insert")
public class InsertController extends HttpServlet{
/*	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		if(session.getAttribute("id") == null)
			out.write("<script>alert('로그인 필요');location.href='../../member/login';</script>");
		else
			request.getRequestDispatcher("/WEB-INF/view/admin/notice/reg.jsp").forward(request, response);
	}  
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		LetterDao dao = new JdbcLetterDao();
		dao.insert(title, content);

		response.sendRedirect("list");
	}*/
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/guest/letter/list.jsp").forward(request, response);
	}
}
