package src.com.secretd.web.dao.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import src.com.secretd.web.entity.Survey;
import src.com.secretd.web.dao.DiseaseDao;
import src.com.secretd.web.dao.SurveyDao;
import src.com.secretd.web.entity.Disease;
import src.com.secretd.web.entity.Symptom;

public class JdbcSurveyDao implements SurveyDao {

	@Override
	public List<Survey> getList(String nextNum) {
		List<Survey> list = null;
		Survey s = null;
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "SELECT ansNum,ans,d1,d2,nextNum FROM soonfacedb.Survey where queNum=?";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			// Statement st = conn.createStatement();
			PreparedStatement st2 = conn.prepareStatement(sql);
			st2.setString(1, nextNum);
			ResultSet rs2 = st2.executeQuery();

			list = new ArrayList<>();

			while (rs2.next()) {

				s = new Survey();

				s.setAnsNum(rs2.getString("ansNum"));
				s.setAns(rs2.getString("ans"));
				s.setD1(rs2.getString("d1"));
				s.setD2(rs2.getString("d2"));
				s.setNextNum(rs2.getString("nextNum"));

				list.add(s);
			}

			rs2.close();
			st2.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	@Override
	public Survey get(String nextNum) {
		Survey s = null;
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "select queNum,question,d1,d2 from Survey where queNum=?";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			// Statement st = conn.createStatement();
			PreparedStatement st2 = conn.prepareStatement(sql);
			st2.setString(1, nextNum);
			ResultSet rs2 = st2.executeQuery();

			if (rs2.next()) {

				s = new Survey();

				s.setQueNum(rs2.getString("queNum"));
				s.setQuestion(rs2.getString("question"));
				s.setD1(rs2.getString("d1"));
				s.setD2(rs2.getString("d2"));
				// s.setNextNum(rs2.getString("nextNum"));

			}

			rs2.close();
			st2.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return s;
	}

	@Override
	public List<Symptom> getSymptomList(String nextNum, String ansNum) {
		List<Symptom> list = null;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "select s.* from Symptom s,Disease_symptom d " + "where d.symptom_number=s.number "
				+ "and d.disease_code=(select class_code from Disease where name =(select ans from Survey where queNum = ? and ansNum = ?)) "
				+ "and d.disease_number=(select number from Disease where name =(select ans from Survey where queNum = ? and ansNum = ?));";

		try {
			Class.forName("com.mysql.jdbc.Driver");

			// ���� / ����
			Connection con1 = DriverManager.getConnection(url, "soonface", "2014");

			// ����
			PreparedStatement st1 = con1.prepareStatement(sql);

			st1.setString(1, nextNum);
			st1.setString(2, ansNum);
			st1.setString(3, nextNum);
			st1.setString(4, ansNum);

			// ��� ��������
			ResultSet rs1 = st1.executeQuery();

			// Model
			list = new ArrayList<>();
			// ��� ����ϱ�
			while (rs1.next()) {
				Symptom n = new Symptom();
				n.setNum(rs1.getString("number"));
				n.setContent(rs1.getString("content"));

				list.add(n);
			}

			rs1.close();
			st1.close();
			con1.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int getNum(int result, String nextNum, String ansNum) {
		double result2 = 0;

		int commentCount = 0;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sqlcount = "select count(s.number) as count from Symptom s,Disease_symptom d  where d.symptom_number=s.number "
				+ "				and d.disease_code=(select class_code from Disease where name =(select ans from Survey where queNum = ? and ansNum = ?)) "
				+ "				and d.disease_number=(select number from Disease where name =(select ans from Survey where queNum = ? and ansNum = ?));"
				+ "                ";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(url, "soonface", "2014");
			// Statement st = conn.createStatement();
			PreparedStatement stCount = conn.prepareStatement(sqlcount);

			stCount.setString(1, nextNum);
			stCount.setString(2, ansNum);
			stCount.setString(3, nextNum);
			stCount.setString(4, ansNum);

			ResultSet rscount = stCount.executeQuery();

			rscount.next();

			commentCount = rscount.getInt("count");
			result2 = (double) ((double) result / (double) commentCount) * 100;
			System.out.println("commentCount :" + commentCount);
			System.out.println("result : " + result);
			System.out.println("result2 : " + result2);
			rscount.close();
			stCount.close();
			conn.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return (int) result2;
	}

	@Override
	public String getNextNum(String nextNum, String ansNum) {
		String nNum = "";
		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "select nextNum from Survey where queNum=? and ansNum=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// ���� / ����
			Connection con1 = DriverManager.getConnection(url, "soonface", "2014");
			// ����
			PreparedStatement st1 = con1.prepareStatement(sql);
			st1.setString(1, nextNum);
			st1.setString(2, ansNum);
			// ��� ��������
			ResultSet rs1 = st1.executeQuery();
			// ��� ����ϱ�
			if (rs1.next())
				nNum = rs1.getString("nextNum");
			rs1.close();
			st1.close();
			con1.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return nNum;
	}

	@Override
	public List<Disease> getDiseaseList(String dis1, String dis2, String dis3, String nextNum) {
		List<Disease> list = null;

		String url = "jdbc:mysql://211.238.142.247/soonfacedb?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
		String sql = "select d.* from Disease d , Survey s where d.number=s.d2 and d.class_code=s.d1 and s.queNum=? and ansNum in (?,?,?) ;";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			// ���� / ����
			Connection con1 = DriverManager.getConnection(url, "soonface", "2014");
			// ����
			PreparedStatement st1 = con1.prepareStatement(sql);
			st1.setString(1, nextNum);
			st1.setString(2, dis1);
			st1.setString(3, dis2);
			st1.setString(4, dis3);
			// ��� ��������
			ResultSet rs1 = st1.executeQuery();
			// ��� ����ϱ�

			list = new ArrayList<>();
			// ��� ����ϱ�
			while (rs1.next()) {
				Disease d = new Disease();
				d.setName(rs1.getString("name"));
				d.setExplanation(rs1.getString("explanation"));

				list.add(d);
			}

			rs1.close();
			st1.close();
			con1.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
