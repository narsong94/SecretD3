package src.com.secretd.web.controller.member.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.secretd.web.dao.MyInfoDao;
import src.com.secretd.web.dao.MyLetterDao;
import src.com.secretd.web.dao.jdbc.JdbcMyInfoDao;
import src.com.secretd.web.dao.jdbc.JdbcMyLetterDao;

@WebServlet("/member/mypage/letter-list")
public class LetteListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		Object _memberId = session.getAttribute("id");

		System.out.println(_memberId);
		if (_memberId == null) // 1. �α��� �� ���� ���ٸ� �ϴ� �α��� �Ϸ�����
			response.sendRedirect("../../login?returnURL=home");
		else {

			String memberId = _memberId.toString();
			MyLetterDao myletterdao = new JdbcMyLetterDao();

			request.setAttribute("list", myletterdao.getList(memberId));
			request.getRequestDispatcher("/WEB-INF/views/member/mypage/letterList.jsp").forward(request, response); // �̾
																														// ���
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Object _memberId = session.getAttribute("id");
		String memberId = _memberId.toString();

		String email = request.getParameter("email");
		String nickname = request.getParameter("nickname");

		MyInfoDao myinfodao = new JdbcMyInfoDao();
		int result = myinfodao.update(memberId, email, nickname);

		response.sendRedirect("info?id=" + memberId);
	}
}