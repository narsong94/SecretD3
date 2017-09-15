package src.com.secretd.web.controller.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.secretd.web.dao.HospitalDao;
import src.com.secretd.web.dao.MemberDao;
import src.com.secretd.web.dao.jdbc.JdbcHospitalDao;
import src.com.secretd.web.dao.jdbc.JdbcMemberDao;
import src.com.secretd.web.entity.Member;

@WebServlet("/admin/page")
public class PageController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int result = 0;
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String _id = (String) session.getAttribute("id");
		String id = "";

		if (_id != null && !_id.equals(""))
			id = _id;

		System.out.println("id : " + id);

		if (id.equals(""))
			out.write(
					"<script>alert('로그인이 필요합니다');location.href='../login';</script>");
		else {
			String role = "";
			MemberDao mdao = new JdbcMemberDao();
			Member m = mdao.getRole(id);

			String _role = m.getRole();

			System.out.println("role : " + role);

			if (_role != null && !_role.equals(""))
				role = _role;
			
			if (!role.equals("admin")) {
				out.write("<script>alert('관리자 접근 권한이 없습니다');history.go(-1);self.close();</script>");
			} else {
				response.sendRedirect("notice/list");
			}
		}
	}
}
