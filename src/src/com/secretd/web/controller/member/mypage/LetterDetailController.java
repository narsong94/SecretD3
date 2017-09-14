package src.com.secretd.web.controller.member.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.secretd.web.dao.MyLetterDao;
import src.com.secretd.web.dao.jdbc.JdbcMyLetterDao;

@WebServlet("/member/mypage/letter-detail")
public class LetterDetailController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		Object _memberId = session.getAttribute("id");

		System.out.println(_memberId);

		String num = request.getParameter("number");
		int number = Integer.parseInt(num);
		if (_memberId == null) // 1. 로그인 한 적이 없다면 일단 로그인 하러가쟈
			response.sendRedirect("../../login?returnURL=home");
		else {

			String memberId = _memberId.toString();
			MyLetterDao myletterdao = new JdbcMyLetterDao();

			request.setAttribute("q", myletterdao.getQ(memberId, number));
			request.setAttribute("a", myletterdao.getA(memberId, number));

			request.getRequestDispatcher("/WEB-INF/views/member/mypage/letterDetail.jsp").forward(request, response); // 이어서
																														// 출발
		}
	}
}
