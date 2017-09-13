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

public class JdbcFaqDao implements FaqDao {

	@Override
	public List<Faq> get() {
		List<Faq> list = null;
		String sql = "SELECT * FROM Faq";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(sql);

			list = new ArrayList<>();

			while (rs.next()) {
				Faq n = new Faq();
				n.setNumber(rs.getString("number"));
				n.setDate(rs.getString("date"));
				n.setTitle(rs.getString("title"));
				n.setContent(rs.getString("content"));
				n.setManagerId(rs.getString("manager_id"));
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

	@Override
	public Faq get(String number) {
		Faq n = null;
		String sql = "SELECT * FROM Faq WHERE number = ?";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			// ?‹¤?–‰
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, number);
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				n = new Faq();
				n.setNumber(rs.getString("number"));
				n.setDate(rs.getString("date"));
				n.setTitle(rs.getString("title"));
				n.setContent(rs.getString("content"));
				n.setManagerId(rs.getString("manager_id"));
				n.setAnswer(rs.getString("answer"));
			}
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return n;
	}

}