package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDao;

public class InnerLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 2763285411015256232L;

	UserDao userDao = new UserDao();

	public void innit() {

	}

	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) {
		String name = req.getParameter("id");
		String pass = req.getParameter("pass");
		boolean hasUser = userDao.loginCheck(name, pass);
		if (hasUser == true) {
			res.setStatus(200);
			try {
				HttpSession session = req.getSession();
				session.setAttribute("user", name);
				req.getRequestDispatcher("index.jsp").forward(req, res);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			;
		} else {
			try {
				HttpSession session = req.getSession();
				session.setAttribute("msg", "用户名或密码错误！");
				req.getRequestDispatcher("login.jsp").forward(req, res);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
