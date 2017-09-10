package src.com.secretd.web.controller.guest.counseling;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.entity.Member;

@WebServlet("/guest/counseling/list")
public class ListController extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Member> list = null;
		List<Member> list2 = null;
		   Member m = null;  
		
		String _name = request.getParameter("name");
		String _gender=request.getParameter("gender");
		
		String name=""; //기본값
		String gender="";
		
		System.out.println(_gender);
		if( _name != null  && ! _name.equals("") )
			name =  _name;
		if( _gender != null  && ! _gender.equals("") )
			gender =  _gender;
		
		String url = "jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";	
		String sql = "SELECT * FROM Member WHERE name LIKE ? limit 0,4";
		
	     try {
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection conn = DriverManager.getConnection(url, "sist", "cclass");
	         // Statement st = conn.createStatement();
	         PreparedStatement st = conn.prepareStatement(sql);
	         st.setString(1, "%"+name+"%");
	         ResultSet rs = st.executeQuery();
	         
	         list = new ArrayList<>();
	      
	         
	         while (rs.next()) {
	        
	        	m = new Member(); 
	            m.setId(rs.getString("ID"));
	            m.setName(rs.getString("NAME"));
	            m.setPwd(rs.getString("PWD"));
	            
	            list.add(m);
	         }

	         rs.close();
	         st.close();
	         conn.close();

	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }

	     
	     
	     
	/*-----------------------------------------------------   */  
	     
	     
	     
	     String _page = request.getParameter("p");

		int page=1; //전달이 안됐을 때 기본값
		int count = 0;
		
		if(_page!=null && !_page.equals(""))
			page = Integer.parseInt(_page);
	     
	     String sql2 = "SELECT * FROM Member WHERE gender LIKE ? order by id limit ?,10";
	   
	     
	     int offset =(page-1) *3;
	 /*    System.out.println("offset= " + offset);
	     System.out.println("page = "+page);*/
	     System.out.println(count);
	     try {
	         Class.forName("com.mysql.jdbc.Driver");
	         Connection conn = DriverManager.getConnection(url, "sist", "cclass");
	         // Statement st = conn.createStatement();
	         PreparedStatement st2 = conn.prepareStatement(sql2);
	         st2.setString(1, "%"+gender+"%");
	         st2.setInt(2, offset);
	         ResultSet rs2 = st2.executeQuery();
	      
	         
	         
	       
	         list2 = new ArrayList<>();
	  
	         
	         while (rs2.next()) {
	        
	        	m = new Member(); 
	            m.setId(rs2.getString("ID"));
	            m.setName(rs2.getString("NAME"));
	            m.setPwd(rs2.getString("PWD"));
	            
	            list2.add(m);
	         }

	         rs2.close();
	         st2.close();
	         conn.close();
	        
	      } catch (ClassNotFoundException e) {
	         e.printStackTrace();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	     

		request.setAttribute("list", list);
		request.setAttribute("list2", list2);
		

		request.getRequestDispatcher("/WEB-INF/views/guest/counseling/list.jsp").forward(request, response); //이어서 출발
		
	}
}
