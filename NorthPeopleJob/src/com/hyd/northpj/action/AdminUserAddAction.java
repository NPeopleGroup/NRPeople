package com.hyd.northpj.action;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.service.impl.AdminUserService;
import com.opensymphony.xwork2.ActionSupport;

public class AdminUserAddAction extends ModelAction<AdminUser>{

	/**
	 * 
	 */
	private AdminUser myAdminUser=new AdminUser();
	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(myAdminUser.toString());
		AdminUserService myAdminUserService=new AdminUserService();
		try {
			myAdminUserService.register(getMyAdminUser());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public AdminUser getModel() {
		return getMyAdminUser();
	}

	public void setModel(AdminUser myAdminUser) {
		this.setMyAdminUser(myAdminUser);
	}

	public AdminUser getMyAdminUser() {
		return myAdminUser;
	}

	public void setMyAdminUser(AdminUser myAdminUser) {
		this.myAdminUser = myAdminUser;
	}
}
