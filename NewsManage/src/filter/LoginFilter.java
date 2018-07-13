package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter implements Filter {

	String passUrl = "";
	
	@Override
	public void destroy() {
		System.out.println("destory");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpServletResponse httpResponse = (HttpServletResponse) response;
		String[] strArray = passUrl.split(";");
		for(String str : strArray){
			if ("".equals(str))
				continue;
			if(httpRequest.getRequestURI().indexOf(str) >=0){
				chain.doFilter(request, response);
				return;
			}
		}
		HttpSession session = httpRequest.getSession();
		if (session.getAttribute("user") != null) {
			chain.doFilter(request, response);
		} else {
			httpResponse.sendRedirect(httpRequest.getContextPath() + "/login.jsp");
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		passUrl = arg0.getInitParameter("passUrl");
		System.out.println("initalize");
	}

}
