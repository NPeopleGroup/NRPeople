package com.hyd.northpj.service.impl;

import org.apache.log4j.Logger;

import com.hyd.northpj.dao.impl.UserDao;
import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.interfaces.UserServiceInterface;
import com.hyd.northpj.util.ValidateUtil;

public class UserService implements UserServiceInterface {

	private UserDao myUserDao = new UserDao();
	private Logger myLogger = Logger.getLogger(this.getClass());

	@Override
	public int register(User user) throws Exception {

		// 对用户有效性进行验
		int validateResult = ValidateUtil.validUser(user);
		// 返回值不为0，表示出错，返回出错标志
		if (validateResult != 0) {
			return validateResult;
		}
		return myUserDao.insertUser(user) == 0 ? 0 : 5;
	}

	@Override
	public int login(User user) throws Exception {

		// 对用户有效性进行验
		int validateResult = ValidateUtil.validUser(user);
		// 返回值不为0，表示出错，返回出错标志
		if (validateResult != 0) {
			return validateResult;
		}

		String realPassword = null;
		try {
			realPassword = myUserDao.selectUserPassword(user.getUsername());
		} catch (Exception e) {
			myLogger.error("获取用户密码出现问题:" + e.toString());
			return 5;
		}
		if (user.getPassword() == null || user.getPassword().trim().equals("")) {
			myLogger.error("用户密码输入为空！");
			return 6;
		} else if (!user.getPassword().equals(realPassword)) {
			myLogger.error("用户密码不匹配！");
			return 7;
		}
		return 0;
	}

	@Override
	public int changePassword(User user, String newPassword) throws Exception {
		// 判断用户有效性
		int isUserExist = login(user);
		// 返回值不为0，表示出错，返回出错标志
		if (isUserExist != 0) {
			myLogger.error("无法通过用户有效性验证,请核对用户名以及密码！");
			return isUserExist;
		}
		if (user.getPassword().equals(newPassword)) {
			myLogger.error("两次用户名密码一致!");
			return 7;
		}

		try {
			user.setPassword(newPassword);
			myUserDao.updateUserPassword(user);
		} catch (Exception e) {
			myLogger.error("更新用户密码出现问题:" + e.toString());
			return 8;
		}
		return 0;
	}

	@Override
	public int setInformation(User user) throws Exception { 
		// 判断用户有效性
		int isUserExist = login(user);
		// 返回值不为0，表示出错，返回出错标志
		if (isUserExist != 0) {
			myLogger.error("无法通过用户有效性验证,请核对用户名以及密码！");
			return isUserExist;
		}
		if (ValidateUtil.validateUserAllProperty(user) == 0) {
			myUserDao.updateUserInformation(user);
		} else {
			myLogger.error("更新用户信息出现错误！");
			return 3;
		}
		return 0;
	}

	@Override
	public User getInformation(String username) throws Exception {
		// TODO Auto-generated method stub
		if (username != null && ValidateUtil.isPassSqlFilter(username)) {
			return myUserDao.selectUserInformation(username);
		}
		return null;
	}

	@Override
	public int initialiseAcceptionProgress(User user) throws Exception {
		// TODO Auto-generated method stub
		if (user.getUsername() != null
				&& ValidateUtil.isPassSqlFilter(user.getUsername())) {
			return myUserDao.updateUserAcceptionProgress(user);
		}
		return 0;
	}

	@Override
	public int initialiseApplicationTime(User user) throws Exception {
		// TODO Auto-generated method stub
		if (user.getUsername() != null
				&& ValidateUtil.isPassSqlFilter(user.getUsername())) {
			return myUserDao.updateUserApplicationTime(user);
		}
		return 0;
	}

	@Override
	public int changeAcceptionProgress(User user) throws Exception {
		// TODO Auto-generated method stub
		if (user.getUsername() != null
				&& ValidateUtil.isPassSqlFilter(user.getUsername())) {
			return myUserDao.updateUserAcceptionProgress(user);
		}
		return 0;
	}

	@Override
	public int changeAppointmentTime(User user) throws Exception {
		// TODO Auto-generated method stub
		if (user.getUsername() != null
				&& ValidateUtil.isPassSqlFilter(user.getUsername())) {
			return myUserDao.updateUserAppointmentTime(user);
		}
		return 0;
	}

}
