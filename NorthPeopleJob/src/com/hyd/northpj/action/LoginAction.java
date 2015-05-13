package com.hyd.northpj.action;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.UserService;
import com.hyd.northpj.util.PrintDataToAjax;

public class LoginAction extends ModelAction<User> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3757014914864064554L;
	private User user = new User();

	public User getModel() {
		return user;
	}

	public String execute() throws Exception {
		PrintDataToAjax PrintDataToAjax = new PrintDataToAjax();
		try {
			UserService userService = new UserService();

			if (0 == userService.login(user)) {

				if (0 == PrintDataToAjax.print(SUCCESS)) {

					request.getSession().setMaxInactiveInterval(3600);
					request.getSession().setAttribute(
							"NorthPeopleJob_username", user.getUsername());

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
