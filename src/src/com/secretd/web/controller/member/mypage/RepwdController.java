package src.com.secretd.web.controller.member.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import src.com.secretd.web.dao.MemberDao;
import src.com.secretd.web.dao.NoticeDao;
import src.com.secretd.web.dao.jdbc.JdbcMemberDao;
import src.com.secretd.web.dao.jdbc.JdbcNoticeDao;
import src.com.secretd.web.entity.Member;

@WebServlet("/member/mypage/repwd")
public class RepwdController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/member/mypage/rePwd.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		HttpSession session =request.getSession();

		int result=0; //새비밀번호로 업데이트한 결과값
		
		String pwd= "";
		String newpwd = "";
		String email = "";
		

		String _pwd = request.getParameter("pwd");
		String[] _newPwds = request.getParameterValues("newPwd");
		Object _memberId = session.getAttribute("id");
		String id = _memberId.toString();
		//비밀번호 
		MemberDao memberDao = new JdbcMemberDao();
		Member m = memberDao.get(id);
		String pwd_check = m.getPwd();
		
		
		

		if (_pwd != null && !_pwd.equals(""))
			pwd= _pwd;


		if (pwd.equals("") || _newPwds[0].equals("") || _newPwds[1].equals("")) {
			out.println("<script language='javascript'>");
			out.println("alert('정보를 모두 입력해주세용~!'); history.go(-1);");
			out.println("</script>");
			out.flush();
		}
		else if(!_newPwds[0].equals(_newPwds[1]) && !_newPwds[0].equals("")) {
			out.println("<script language='javascript'>");
			out.println("alert('새비밀번호와 새비밀번호 확인이 일치하지 않습니당~'); history.go(-1);");
			out.println("</script>");
			out.flush();
		}
		else if(!pwd.equals(pwd_check)) {
			System.out.println("??" + pwd_check);
			System.out.println(pwd);
			out.println("<script language='javascript'>");
			out.println("alert('현재 비밀번호가 맞지 않습니다.'); history.go(-1);");
			out.println("</script>");
			out.flush();
		}
		else {
			result = memberDao.edit(id,_newPwds[0]);
			if(result==1)
				response.sendRedirect("info");//비밀번호 성공했을때 home으로 넘겨줘 나리야~
			else{
				out.println("<script language='javascript'>");
				out.println("alert('죄송합니다. 비밀번호 수정중 오류가 생겼습니다.\n 다시 시도해주세요.'); history.go(-1);");
				out.println("</script>");
				out.flush();
			}

		}
	}
}
