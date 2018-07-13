package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.NewsDao;
import entity.News;

/**
 * Servlet implementation class NewsPublishServlet
 */

public class NewsPublishServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewsPublishServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		News news = new News();
		NewsDao newsDao = new NewsDao();
		
		news.setTitle(request.getParameter("title"));
		news.setTypeId(request.getParameter("typeId"));
		news.setAuthor(request.getParameter("author"));
		news.setContext(request.getParameter("context"));
		news.setNewsDate(request.getParameter("date"));
		
		System.out.println(news.toString());
		
		boolean result = newsDao.newsPublish(news);
		if(result == true){
			request.getRequestDispatcher("publishSuccess.jsp").forward(request, response);
		}else{
			HttpSession session = request.getSession();
			session.setAttribute("msg", "发布失败");
			request.getRequestDispatcher("newsPublish.jsp").forward(request, response);
		}
		
		
	}

}
