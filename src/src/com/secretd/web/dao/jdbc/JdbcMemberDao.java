package src.com.secretd.web.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import src.com.secretd.web.dao.MemberDao;
import src.com.secretd.web.entity.Member;

public class JdbcMemberDao implements MemberDao {

	@Override
	public int insert(String id, String pwd, String name, String email, String nickname) {
		int result = 0;
		String sql = "INSERT INTO Member(id,pwd, name, email,nickname,role) VALUES(?,?,?,?,?,member)";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setString(2, pwd);
			st.setString(3, name);
			st.setString(4, email);
			st.setString(5, nickname);
			result = st.executeUpdate();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Member get(String id) {
		Member member = null;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT * FROM Member WHERE id=?";

		// jdbc 드라이버 로드
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// 연결 /인증
			Connection con = DriverManager.getConnection(url, "soonface", "2014");

			// 실행
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);

			// 결과 가져오기
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				member = new Member();
				
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setNickname(rs.getString("nickname"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setRole(rs.getString("role"));
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return member;
	}

	@Override
	public int edit(String id, String pwd) {
		int result = 0;
		String sql = "UPDATE Member SET pwd= ? WHERE id = ?";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, pwd);
			st.setString(2, id);
			result = st.executeUpdate();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public boolean duplicateIdCheck(String id) {
		boolean result = false;
		String sql = "SELECT * FROM Member WHERE id=?";
		String url = "jdbc:mysql://211.238.142.247/newlecture?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "sist", "cclass");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				result = true;
			}
			System.out.println(result);
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public String get(String name, String email) {
		String id = null;
		String sql = "SELECT * FROM Member WHERE name = ? && email=?";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, email);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				id = rs.getString("id");
			}
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}

	@Override
	public String get(String id, String name, String email) {
		String pwd = null;
		String sql = "SELECT * FROM Member WHERE id=? && name = ? && email=? ";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "soonface", "2014");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setString(2, name);
			st.setString(3, email);
			ResultSet rs = st.executeQuery();
			if (rs.next()) {
				pwd = rs.getString("pwd");
			}
			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pwd;
	}

	@Override
	public Member getRole(String id) {
		Member member = null;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT * FROM Member WHERE id=?";

		// jdbc 드라이버 로드
		try {
			Class.forName("com.mysql.jdbc.Driver");

			// 연결 /인증
			Connection con = DriverManager.getConnection(url, "soonface", "2014");

			// 실행
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);

			// 결과 가져오기
			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				member = new Member();
				
				member.setId(rs.getString("id"));
				member.setPwd(rs.getString("pwd"));
				member.setNickname(rs.getString("nickname"));
				member.setName(rs.getString("name"));
				member.setEmail(rs.getString("email"));
				member.setRole(rs.getString("role"));
				
				System.out.println(rs.getString("role"));
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return member;
	}

}