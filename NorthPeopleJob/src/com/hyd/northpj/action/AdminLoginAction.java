package com.hyd.northpj.action;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.service.impl.AdminUserService;
import com.hyd.northpj.util.PrintDataToAjax;

public class AdminLoginAction extends ModelAction<AdminUser> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2232839273693579700L;
	private AdminUser adminUser = new AdminUser();

	public AdminUser getModel() {
		return adminUser;
	}

	public String execute() throws Exception {
		PrintDataToAjax PrintDataToAjax = new PrintDataToAjax();
		try {
			AdminUserService adminUserService = new AdminUserService();

			if (0 == adminUserService.login(adminUser)) {

				if (0 == PrintDataToAjax.print(SUCCESS)) {
					request.getSession().setMaxInactiveInterval(3600);
					request.getSession().setAttribute(
							"NorthPeopleJob_adminusername",
							adminUser.getUsername());
					return SUCCESS;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		PrintDataToAjax.print(INPUT);
		return INPUT;
	}
}
