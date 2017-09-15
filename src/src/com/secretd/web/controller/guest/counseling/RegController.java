package src.com.secretd.web.controller.guest.counseling;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/guest/counseling/reg")
public class RegController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/views/guest/counseling/reg.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int result = 0;
		request.setCharacterEncoding("UTF-8");
		
		 HttpSession session =request.getSession();
		   	
		   	Object _memberId = session.getAttribute("id");
			
		   	String memberId = _memberId.toString();
		
		
		String category = request.getParameter("Category");
		String title =request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("Category"+category);
		System.out.println("title"+title);
		System.out.println("content"+content);
		System.out.println("memberid"+memberId);
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "INSERT INTO Counseling(`number`, `date`, `title`, `content`, `writer_id`, `category`, `hit`) VALUES((select IFNULL(MAX(CAST(number as unsigned)),0)+1 from Counseling as b), (select sysdate()), ?, ?, ?, ?, ?)"; 

	      try {
	         Class.forName("com.mysql.jdbc.Driver");
	     	Connection conn = DriverManager.getConnection(url, "soonface", "2014");
	         // Statement st = conn.createStatement();
	    	PreparedStatement st = conn.prepareStatement(sql);
	    	
	         st.setString(1, title);
	         st.setString(2, content);
	         st.setString(3, memberId);
	         st.setString(4, category);
	         st.setString(5, "0");
	         
	         result = st.executeUpdate();
	      
	         st.close();
	         conn.close();
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }

	      
	      
	      
	      
	      
	      response.sendRedirect("list");
	}
}
