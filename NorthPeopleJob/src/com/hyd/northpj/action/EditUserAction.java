package com.hyd.northpj.action;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.UserService;
import com.opensymphony.xwork2.ActionSupport;

public class EditUserAction extends ModelAction<User>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;
	private User myEditUser=new User();
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(myEditUser.toString());
		System.out.println(userName);
		UserService myUserService=new UserService();
		myUserService.setInformation(myEditUser);
		System.out.println(SUCCESS);
		return SUCCESS;
	}
	public User getModel() {
		return myEditUser;
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
