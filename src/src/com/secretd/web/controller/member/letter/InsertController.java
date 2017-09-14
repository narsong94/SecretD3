package src.com.secretd.web.controller.member.letter;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.dao.LetterDao;
import src.com.secretd.web.dao.jdbc.JdbcLetterDao;
import src.com.secretd.web.entity.Letter;

@WebServlet("/member/letter/insert")
public class InsertController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("/WEB-INF/views/guest/letter/insert.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String title = request.getParameter("title");
		String writerId = request.getParameter("writerId");
		String content = request.getParameter("content");

		System.out.println(title);
		System.out.println(writerId);
		System.out.println(content);

		LetterDao dao = new JdbcLetterDao();
		Letter letter = dao.insert(title, writerId, content);

		request.setAttribute("letter", letter);

		request.getRequestDispatcher("/WEB-INF/views/member/letter/detail.jsp").forward(request, response);
	}

}
