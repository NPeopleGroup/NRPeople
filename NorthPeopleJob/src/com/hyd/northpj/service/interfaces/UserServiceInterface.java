package com.hyd.northpj.service.interfaces;

import com.hyd.northpj.entity.User;

public interface UserServiceInterface {

	/**
	 * 用户注册
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int register(User user) throws Exception;

	/**
	 * 用户登录
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int login(User user) throws Exception;

	/**
	 * 用户更改密码
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int changePassword(User user, String newPassword) throws Exception;

	/**
	 * 用户登记个人信息
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int setInformation(User user) throws Exception;

	/**
	 * 获取用户的个人信息
	 * 
	 * @param username
	 * @return 一个用户
	 * @throws Exception
	 */
	public User getInformation(String username) throws Exception;

	/**
	 * 初始化用户办理进度
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int initialiseAcceptionProgress(User user) throws Exception;

	/**
	 * 初始化登记时间
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int initialiseApplicationTime(User user) throws Exception;

	/**
	 * 变更用户的办理进度
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int changeAcceptionProgress(User user) throws Exception;

	/**
	 * 初始化预约时间
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int changeAppointmentTime(User user) throws Exception;

}
