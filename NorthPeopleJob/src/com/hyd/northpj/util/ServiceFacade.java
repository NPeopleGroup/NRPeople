package com.hyd.northpj.util;

import com.hyd.northpj.service.impl.UserService;


public class ServiceFacade {
	
    private UserService userService;

    public UserService getUserService()
    {
        return userService;
    }
    public void setUserService(UserService userService)
    {
        this.userService = userService;
    }
	
}
