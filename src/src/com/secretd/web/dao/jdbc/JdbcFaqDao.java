package src.com.secretd.web.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import src.com.secretd.web.dao.FaqDao;
import src.com.secretd.web.entity.Faq;
import src.com.secretd.web.entity.NoticeView;

public class JdbcFaqDao implements FaqDao {

	@Override
	public List<Faq> get() {
		List<Faq> list = null;
		String sql = "SELECT * FROM Faq";
		String url = "jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "sist", "cclass");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			list = new ArrayList<>();

			while (rs.next()) {
				Faq n = new Faq();
				n.setNumber(rs.getString("number"));
				n.setDate(rs.getString("date"));
				n.setTitle(rs.getString("title"));
				n.setContent(rs.getString("content"));
				n.setManagerId(rs.getString("managerId"));
				n.setAnswer(rs.getString("answer"));

				list.add(n);
			}
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

}
