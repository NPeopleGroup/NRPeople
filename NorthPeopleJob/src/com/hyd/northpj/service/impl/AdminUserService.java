package com.hyd.northpj.service.impl;

import java.util.List;

import org.apache.log4j.Logger;

import com.hyd.northpj.dao.impl.AdminUserDao;
import com.hyd.northpj.dao.impl.UserDao;
import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.interfaces.AdminUserServiceInterface;
import com.hyd.northpj.util.ValidateUtil;

public class AdminUserService implements AdminUserServiceInterface {
	private Logger myLogger = Logger.getLogger(this.getClass());
	private AdminUserDao myAdminUserDao = new AdminUserDao();

	@Override
	public int register(AdminUser adminUser) throws Exception {

		// 对用户有效性进行验
		int validateResult = ValidateUtil.validAdminUser(adminUser);
		// 返回值不为0，表示出错，返回出错标志
		if (validateResult != 0) {
			return validateResult;
		}
		return (myAdminUserDao.insertUser(adminUser)) == 0 ? 0 : 5;
	}

	@Override
	public int login(AdminUser adminUser) throws Exception {
		// TODO Auto-generated method stub

		// 对用户有效性进行验
		int validateResult = ValidateUtil.validAdminUser(adminUser);
		// 返回值不为0，表示出错，返回出错标志
		if (validateResult != 0) {
			return validateResult;
		}

		String realPassword = null;
		try {
			realPassword = myAdminUserDao.selectUserPassword(adminUser
					.getUsername());
		} catch (Exception e) {
			myLogger.error("获取用户密码出现问题:" + e.toString());
			return 5;
		}
		if (adminUser.getPassword() == null
				|| adminUser.getPassword().trim().equals("")) {
			myLogger.error("用户密码输入为空！");
			return 6;
		} else if (!adminUser.getPassword().equals(realPassword)) {
			myLogger.error("用户密码不匹配！");
			return 7;
		}
		return 0;
	}

	@Override
	public int changePassword(AdminUser adminUser, String newPassword)
			throws Exception {
		// TODO Auto-generated method stub

		// 判断用户有效性
		int isUserExist = login(adminUser);
		// 返回值不为0，表示出错，返回出错标志
		if (isUserExist != 0) {
			myLogger.error("无法通过用户有效性验证,请核对用户名以及密码！");
			return isUserExist;
		}
		if (adminUser.getPassword().equals(newPassword)) {
			myLogger.error("两次用户名密码一致!");
			return 7;
		}

		try {
			adminUser.setPassword(newPassword);
			myAdminUserDao.updateUserPassword(adminUser);
		} catch (Exception e) {
			myLogger.error("更新用户密码出现问题:" + e.toString());
			return 8;
		}
		return 0;
	}

	public int setAdminUserInformation(AdminUser adminUser) throws Exception {

		// 判断用户有效性
		int isUserExist = login(adminUser);
		// 返回值不为0，表示出错，返回出错标志
		if (isUserExist != 0) {
			myLogger.error("无法通过用户有效性验证,请核对用户名以及密码！");
			return isUserExist;
		}
		if (ValidateUtil.validateAdminUserAllProperty(adminUser) == 0) {
			myAdminUserDao.updateUserInformation(adminUser);
		} else {
			myLogger.error("更新用户信息出现错误！");
			return 3;
		}
		return 0;
	}

	@Override
	public AdminUser getAdminUserInformation(String username) throws Exception {
		if (username != null && ValidateUtil.isPassSqlFilter(username)) {
			return myAdminUserDao.selectUserInformation(username);
		}
		return null;
		// TODO Auto-generated method stub

	}

	@Override
	public List<User> getNormalUserList() throws Exception {
		// TODO Auto-generated method stub
		UserDao myUserDao=new UserDao();
		List<User> myUserList=myUserDao.selectAllUser();
		return myUserList;
	}

}
