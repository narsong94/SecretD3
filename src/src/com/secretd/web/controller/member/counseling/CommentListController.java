package src.com.secretd.web.controller.member.counseling;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.entity.Comment;

@WebServlet("/member/Comment-list")
public class CommentListController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Comment co = null;

		String _number = request.getParameter("number");
		String number = "";
		if (_number != null && !_number.equals(""))
			number = _number;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "select c.number,comm.content,m.nickname from soonfacedb.Counseling c right outer join soonfacedb.Comment comm on c.number= comm.`text-number`\r\n"
				+ " left outer join soonfacedb.Member m on comm.member_id=m.id where c.number=? ;";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, number);
			ResultSet rs = st.executeQuery();

			if (rs.next()) {

				co = new Comment();
				co.setNumber(rs.getInt("number"));
				co.setNickname(rs.getString("nickname"));
				co.setContent(rs.getString("content"));

			}

			rs.close();
			st.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		request.setAttribute("comment_list", co);
		request.getRequestDispatcher("/WEB-INF/views/member/counseling/comment_list.jsp").forward(request, response);
	}
}
