package com.hyd.northpj.service.impl;

import com.hyd.northpj.entity.User;

public class UserServiceTest {
	public static void main(String[] args) throws Exception {
		User newUser=new User();
		newUser.setName("ะกร๗");
		newUser.setType("4");
		newUser.setPassword("wojiushiwo");
		UserService myUserService=new UserService();
		myUserService.register(newUser);
	}
}
