package src.com.secretd.web.controller.member.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.secretd.web.dao.MyInfoDao;
import src.com.secretd.web.dao.jdbc.JdbcMyInfoDao;

@WebServlet("/member/mypage/info")
public class InfoController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		Object _memberId = session.getAttribute("id");

		System.out.println(_memberId);
		if (_memberId == null) // 1. 로그인 한 적이 없다면 일단 로그인 하러가쟈
			response.sendRedirect("../../login?returnURL=home");
		else {

			String memberId = _memberId.toString();
			MyInfoDao myinfodao = new JdbcMyInfoDao();

			request.setAttribute("m", myinfodao.get(memberId));
			request.getRequestDispatcher("/WEB-INF/views/member/mypage/info.jsp").forward(request, response); // 이어서
																													// 출발
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
