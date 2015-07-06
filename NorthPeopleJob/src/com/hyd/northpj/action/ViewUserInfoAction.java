package com.hyd.northpj.action;

import java.util.ArrayList;
import java.util.List;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.UserService;
import com.hyd.northpj.util.CommonUtil;
import com.hyd.northpj.util.Relations;
import com.opensymphony.xwork2.ActionSupport;

public class ViewUserInfoAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String userName;

	private User myUser=new User();
	
	private UserService myUserService=new UserService();
	
	private List<Relations> myRelationList=new ArrayList<Relations>();
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		CommonUtil.construcUserInfo(myUser,myRelationList,myUserService,getUserName());
		return SUCCESS;
	}


	public User getMyUser() {
		return myUser;
	}

	public void setMyUser(User myUser) {
		this.myUser = myUser;
	}

	public List<Relations> getMyRelationList() {
		return myRelationList;
	}

	public void setMyRelationList(List<Relations> myRelationList) {
		this.myRelationList = myRelationList;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
