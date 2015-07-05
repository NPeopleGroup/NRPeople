package com.hyd.northpj.action;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.UserService;
import com.hyd.northpj.util.CommonUtil;

public class UserAddAction extends ModelAction<User>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private User myUser=new User();
	private UserService myUserService=new UserService();
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(myUser.toString());
		int result=myUserService.register(myUser);
		if (result==0) {
			CommonUtil.toBeJsonResult("success");
		}
		return null;
	}
	public User getMyUser() {
		return myUser;
	}
	public void setMyUser(User myUser) {
		this.myUser = myUser;
	}
	public User getModel()
	{
		return myUser;
	}
}
