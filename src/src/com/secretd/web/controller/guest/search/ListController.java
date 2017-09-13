package src.com.secretd.web.controller.guest.search;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guest/search/list")
public class ListController extends HttpServlet{
	/*@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String _title = request.getParameter("title");
		String _page = request.getParameter("p");
		String _category = request.getParameter("c");
		String title=""; 
		int page=1; 
		String category="";
		
		if(_page!=null && !_page.equals(""))
			page = Integer.parseInt(_page);
		if( _title != null  && ! _title.equals("") )
			title =  _title;
		if(_category != null && !_category.equals(""))
	    	  category = _category;
		
	    DiseaseDao diseaseDao = new JdbcDiseaseDao();

	 	request.setAttribute("list", diseaseDao.getList(page, title,category));
	 	request.setAttribute("count",diseaseDao.getCount(page,title,category));
	 	
		request.getRequestDispatcher("/WEB-INF/views/guest/search/list.jsp").forward(request, response);
	}*/
}
