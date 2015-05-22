package com.hyd.northpj.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.hyd.northpj.entity.User;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
public class GetParaAction extends ActionSupport implements ModelDriven<User>{

	/**
	 * 
	 */
	private User user;;
	private static final long serialVersionUID = 1L;

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		HttpServletRequest myRequest=ServletActionContext.getRequest();
		System.out.println(myRequest.getParameter("name"));
		System.out.println(getModel().toString());
		return super.execute();
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		if(user==null)
		{
			user=new User();
		}
		return user;
	}
}
