package com.hyd.northpj.action;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.service.impl.AdminUserService;

public class AdminUserUpdateAction extends ModelAction<AdminUser>{

	private AdminUser myEditUser=new AdminUser();;	
	private static final long serialVersionUID = 1L;

	public String showAdminUserInfo() throws Exception
	{

		AdminUserService myEditUserService=new AdminUserService();

		setMyEditUser(myEditUserService.getAdminUserInformation(request.getParameter("userName")));
		System.out.println(getMyEditUser().toString());
		return SUCCESS;
	}

	public AdminUser getModel() {
		return getMyEditUser();
	}

	public void setModel(AdminUser myEditUser) {
		this.setMyEditUser(myEditUser);
	}

	public AdminUser getMyEditUser() {
		return myEditUser;
	}

	public void setMyEditUser(AdminUser myEditUser) {
		this.myEditUser = myEditUser;
	}
}
