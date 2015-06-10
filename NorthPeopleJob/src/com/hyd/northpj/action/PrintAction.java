package com.hyd.northpj.action;

import java.util.List;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.AdminUserService;
import com.hyd.northpj.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

public class PrintAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
	/*	System.out.println("******");
		AdminUser adminUser1=new AdminUser();
		adminUser1.setName("name");
		adminUser1.setSn(1);
		adminUser1.setPassword("password");
		adminUser1.setType("type");
		adminUser1.setUsername("userName");
		AdminUser adminUser2=new AdminUser();
		adminUser2.setName("name1");
		adminUser2.setSn(2);
		adminUser2.setPassword("password2");
		adminUser2.setType("type2");
		adminUser2.setUsername("userName2");
		ArrayList<AdminUser> myAdminUserList=new ArrayList<AdminUser>();
		myAdminUserList.add(adminUser1);
		myAdminUserList.add(adminUser2);*/
		AdminUserService myAdminUserService=new AdminUserService();
		List<User> myUserList=myAdminUserService.getNormalUserList();
		CommonUtil.toBeJson(myUserList, myUserList.size());
//		System.out.println(myUserList.toString());
		
		
		return null;
	}

	/**
	 * 
	 */
	
}
