package com.hyd.northpj.action;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class EditUserAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;
	private User myEditUser;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(userName);
		UserService myUserService=new UserService();
		setMyEditUser(myUserService.getInformation(getUserName()));
		System.out.println(SUCCESS);
		return SUCCESS;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public User getMyEditUser() {
		return myEditUser;
	}
	public void setMyEditUser(User myEditUser) {
		this.myEditUser = myEditUser;
	}
}
