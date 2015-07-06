package com.hyd.northpj.action;

import java.util.List;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.service.impl.AdminUserService;
import com.hyd.northpj.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AdminUserListAction extends ActionSupport{


	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() throws Exception {
		AdminUserService myAdminUserService=new AdminUserService();
		List<AdminUser> myAdminUserList=myAdminUserService.getAdminUserList();
		for (AdminUser user : myAdminUserList) {
			System.out.println(user.toString());
		}
		CommonUtil.toBeJson(myAdminUserList, myAdminUserList.size());
		return null;
	}
}
