package src.com.secretd.web.controller.guest.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.dao.MemberDao;
import src.com.secretd.web.dao.jdbc.JdbcMemberDao;
import src.com.secretd.web.entity.Member;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		PrintWriter out = response.getWriter();

		MemberDao memberDao = new JdbcMemberDao();
		Member member = memberDao.get(id);

		if (member == null) {
			System.out.println("1");
			out.println("<script language='javascript'>");
			out.println("alert('해당되는 아이디가 존재하지 않습니다.');history.go(-1);");
			out.println("</script>");
			out.flush();
			response.sendRedirect("login");
		} else if (!member.getPwd().equals(pwd)) {
			System.out.println("2");
			out.println("<script language='javascript'>");
			out.println("alert('비밀번호가 틀렸습니다. 다시 확인해주세요.');history.go(-1);");
			out.println("</script>");
			out.flush();
		} else {
			System.out.println("3");
			request.getSession().setAttribute("id", id);
			String url = request.getParameter("returnURL");
			if (url != null) {
				System.out.println("4");
				response.sendRedirect(url);
			}
			else {
				System.out.println("5");
				response.sendRedirect("index");
			}

		}
	}
}
