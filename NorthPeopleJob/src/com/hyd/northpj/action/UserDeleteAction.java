package com.hyd.northpj.action;

import com.hyd.northpj.service.impl.AdminUserService;
import com.hyd.northpj.service.impl.UserService;
import com.hyd.northpj.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

public class UserDeleteAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String userName;
	private AdminUserService myAdminUserService=new AdminUserService();
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		int result=myAdminUserService.deleteUser(userName);
		if(result==0)
			CommonUtil.toBeJsonResult("success");
		return null;
	}
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
