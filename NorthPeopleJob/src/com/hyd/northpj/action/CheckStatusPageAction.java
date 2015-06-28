package com.hyd.northpj.action;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckStatusPageAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1689008362908670136L;
	private User user = new User();

	public String execute() throws Exception {

		UserService userService = new UserService();

		try {
			setUser(userService.getInformation(ActionContext.getContext()
					.getSession().get("NorthPeopleJob_username").toString()));
		} catch (Exception e) {
			return "overtime";
		}

		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
