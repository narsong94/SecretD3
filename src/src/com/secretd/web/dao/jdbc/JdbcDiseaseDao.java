package src.com.secretd.web.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import src.com.secretd.web.dao.DiseaseDao;
import src.com.secretd.web.entity.Counseling;
import src.com.secretd.web.entity.Disease;
import src.com.secretd.web.entity.Faq;

public class JdbcDiseaseDao implements DiseaseDao {

	@Override
	public List<Disease> getList(int page, String title, String category) {
		List<Disease> list = null;
		String sql = "SELECT * FROM Disease WHERE name LIKE ? and category LIKE ? ORDER BY name LIMIT ?, 10";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		int offset = (page - 1) * 10;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "%" + title + "%");
			st.setString(2, "%" + category + "%");
			st.setInt(3, offset);
			ResultSet rs = st.executeQuery();

			list = new ArrayList<>();

			while (rs.next()) {
				Disease n = new Disease();
				n.setNumber(rs.getString("number"));
				n.setClassCode(rs.getString("class_code"));
				n.setName(rs.getString("name"));
				n.setExplanation(rs.getString("explanation"));
				n.setPicture(rs.getBlob("picture"));

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
	public int getCount(int page, String title, String category) {
		int count = 0;

		String sql = "SELECT count(name) as count FROM Disease WHERE name LIKE ? and category LIKE ?";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		int offset = (page - 1) * 10;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, "%" + title + "%");
			st.setString(2, "%" + category + "%");
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				count = rs.getInt("count");
			}
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return count;
	}

	@Override
	public void delete(String name) {
		String sql = "DELETE FROM Disease WHERE name = ?";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);

			int result = st.executeUpdate();

			if (result == 1)
				System.out.println("OK");

			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public Disease get(String name) {
		Disease n = null;
		String sql = "SELECT * FROM Disease WHERE name = ?";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				n = new Disease();
				n.setNumber(rs.getString("number"));
				n.setClassCode(rs.getString("class_code"));
				n.setName(rs.getString("name"));
				n.setExplanation(rs.getString("explanation"));
				n.setPicture(rs.getBlob("picture"));
				n.setMangerId(rs.getString("manager_id"));
				n.setCategory(rs.getString("category"));
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

	@Override
	public void edit(String code, String number, String name, String explanation, String picture) {
		String sql = "UPDATE Disease SET class_code= ?,number = ? ,explanation=?, picture=? WHERE name = ?";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, code);
			st.setString(2, number);
			st.setString(1, name);
			st.setString(1, explanation);
			st.setString(1, picture);

			int result = st.executeUpdate();

			if (result == 1)
				System.out.println("OK");

			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insert(String code, String number, String name, String explanation, String picture) {
		String sql = "INSERT INTO Disease(clss_code, number, name, explanation, picture, manager_id) VALUES(?, ?, ?, ?, ?, admin)";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, code);
			st.setString(2, number);
			st.setString(1, name);
			st.setString(1, explanation);
			st.setString(1, picture);

			int result = st.executeUpdate();

			if (result == 1)
				System.out.println("OK");

			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
