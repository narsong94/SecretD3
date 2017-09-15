package src.com.secretd.web.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import src.com.secretd.web.dao.LetterDao;
import src.com.secretd.web.entity.Letter;

public class JdbcLetterDao implements LetterDao {

	@Override
	public Letter get(String id) {
		Letter l = null;
		
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT * FROM Letter WHERE writer_id like ?";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			// Statement st = conn.createStatement();
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, id);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				l = new Letter();
				
				l.setTitle(rs.getString("title"));
				l.setId(rs.getString("writer_id"));
				l.setContent(rs.getString("content"));
			}

			rs.close();
			st.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return l;
	}

	@Override
	public Letter insert(String title, String writerId, String content) {
		int result = 0;
		Letter l = null;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "INSERT INTO Letter(title, writer_id, content) VALUES(?, ?, ?)";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, title);
			st.setString(2, writerId);
			st.setString(3, content);
			
			result = st.executeUpdate();
			
			insertAns(writerId);
			l = get(writerId);
			
			st.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return l;
	
	}

	private void insertAns(String writerId) {
		int num = 0;
		int result = 0;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT number FROM Letter WHERE writer_id like ?";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			// Statement st = conn.createStatement();
			PreparedStatement st = conn.prepareStatement(sql);
			st.setString(1, writerId);
			ResultSet rs = st.executeQuery();

			num = rs.getInt("number");

			rs.close();
			st.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String sql2 = "INSERT INTO Answer(number, manager_id) VALUES(?, narsong)";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = conn.prepareStatement(sql);
			st.setInt(1, num);
			
			result = st.executeUpdate();
			
			insertAns(writerId);
			
			st.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}