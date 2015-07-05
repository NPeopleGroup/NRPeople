package com.hyd.northpj.action;

import java.util.List;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.AdminUserService;
import com.hyd.northpj.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

public class PrintAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() throws Exception {
		AdminUserService myAdminUserService=new AdminUserService();
		List<AdminUser> myUserList=myAdminUserService.getAdminUserList();
		for (AdminUser adminUser : myUserList) {
			System.out.println(adminUser.toString());
		}
		CommonUtil.toBeJson(myUserList, myUserList.size());
		return null;
	}

	/**
	 * 
	 */
	
}
