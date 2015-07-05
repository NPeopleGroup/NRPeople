package com.hyd.northpj.action;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.service.impl.AdminUserService;

public class AdminUserOpeAction extends ModelAction<AdminUser>{

	/**
	 * 
	 */
	private AdminUser myAdminUser=new AdminUser();
	private static final long serialVersionUID = 1L;
	
	public String userAdd()
	{
		AdminUserService myAdminUserService=new AdminUserService();
		try {
			myAdminUserService.register(myAdminUser);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(myAdminUser.toString());
		return SUCCESS;
	}

	public String userUpdate()
	{
		return SUCCESS;
	}
	
	public String userDelete()
	{
		return SUCCESS;
	}

	public AdminUser getModel() {
		return myAdminUser;
	}

	public void setModel(AdminUser myAdminUser) {
		this.myAdminUser = myAdminUser;
	}
}
