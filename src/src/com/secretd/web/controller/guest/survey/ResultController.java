package src.com.secretd.web.controller.guest.survey;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import src.com.secretd.web.dao.SurveyDao;
import src.com.secretd.web.dao.jdbc.JdbcSurveyDao;
import src.com.secretd.web.entity.Disease;

@WebServlet("/guest/survey/result")
public class ResultController extends HttpServlet {
	int ans[][] = new int[16][2];

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Disease> list = null;

		String dis1 = request.getParameter("dis1");
		String dis2 = request.getParameter("dis2");
		String dis3 = request.getParameter("dis3");
		String nextNum = request.getParameter("nextNum");

		System.out.println("zzzzzzzzzzzzzzzzzdis1" + dis1);
		System.out.println("zzzzzzzzzzzzzzzzzdis2" + dis2);
		System.out.println("zzzzzzzzzzzzzzzzzdis3" + dis3);
		System.out.println("zzzzzzzzzzzzzzzzznNum" + nextNum);
		SurveyDao surveydao = new JdbcSurveyDao();
		request.setAttribute("list", surveydao.getDiseaseList(dis1, dis2, dis3, nextNum));

		request.getRequestDispatcher("/WEB-INF/views/guest/survey/result.jsp").forward(request, response);
	}
}
