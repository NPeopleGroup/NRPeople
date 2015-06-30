package com.hyd.northpj.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginFilter extends HttpServlet implements Filter {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain filterChain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest myRequest=(HttpServletRequest) request;
		HttpServletResponse myResponse=(HttpServletResponse) response;
		HttpSession mySession=myRequest.getSession();
		String url=myRequest.getServletPath();
		String contextPath=myRequest.getContextPath();
		if(url.contains("admin")&&!url.equals("/admin"))
		{
			String user=(String) mySession.getAttribute("NorthPeopleJob_adminusername");
			if(user==null)
			{
				myResponse.sendRedirect(contextPath+"/admin");
			}
		}	
		filterChain.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub

	}

}
