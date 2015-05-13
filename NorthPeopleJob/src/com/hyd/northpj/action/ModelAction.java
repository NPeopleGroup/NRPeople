package com.hyd.northpj.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.util.ServletContextAware;

import com.hyd.northpj.util.ServiceFacade;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ModelAction<Model> extends ActionSupport implements
		ModelDriven<Model>, ServletRequestAware, ServletContextAware {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2194658601167034432L;
	protected Model model;
	protected ServiceFacade serviceFacade;
	protected String result;
	protected HttpServletRequest request;
	protected HttpSession session;
	protected ServletContext context;
	//向Ajax写回的工具方法

	@Override
	public void setServletContext(ServletContext context) {
		this.context = context;
	}

	@Override
	public Model getModel() {
		return model;
	}

	public void setServiceManager(ServiceFacade serviceManager) {
		this.serviceFacade = serviceManager;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
		this.session = request.getSession();
	}

	public String getResult() {
		return result;
	}
}
