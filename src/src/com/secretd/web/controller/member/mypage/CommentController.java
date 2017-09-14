package src.com.secretd.web.controller.member.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.secretd.web.dao.MyCounselingDao;
import src.com.secretd.web.dao.jdbc.JdbcMyCounselingDao;

@WebServlet("/member/mypage/comment")
public class CommentController extends HttpServlet {
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
			MyCounselingDao mycounselingDao = new JdbcMyCounselingDao();
			request.setAttribute("list", mycounselingDao.getComment(memberId));
			request.getRequestDispatcher("/WEB-INF/views/member/mypage/comment.jsp").forward(request, response); // 이어서
																														// 출발
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object _memberId = session.getAttribute("id");
		String memberId = _memberId.toString();
		System.out.println("zzzzzzzzzzzzzzzzzzzzzzzzzzz");
		MyCounselingDao mycounselingDao = new JdbcMyCounselingDao();
		String[] nums = request.getParameterValues("deleteCheck");

		for (int i = 0; i < nums.length; i++) {
			System.out.println(nums[i]);
			int result = mycounselingDao.deleteComment(nums[i]);

		}
		response.sendRedirect("comment?writer_id=" + memberId);
	}
}
