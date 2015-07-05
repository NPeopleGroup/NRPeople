package com.hyd.northpj.service.interfaces;

import java.util.List;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.entity.User;

public interface AdminUserServiceInterface {
	/**
	 * 注册一个管理员用户
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int register(AdminUser adminUser) throws Exception;

	/**
	 * 管理员用户登录
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int login(AdminUser adminUser) throws Exception;

	/**
	 * 管理员用户更改密码
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int changePassword(AdminUser adminUser, String newPassword) throws Exception;
	
	/**
	 * 用户登记个人信息
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int setAdminUserInformation(AdminUser adminUser) throws Exception;

	/**
	 * 获取用户的个人信息
	 * 
	 * @param username
	 * @return 一个管理员用户
	 * @throws Exception
	 */
	public AdminUser getAdminUserInformation(String username) throws Exception;

	/**
	 * 获取所有申请人员的信息
	 * @return
	 * @throws Exception
	 */
	public List<User> getNormalUserList() throws Exception;

	/**
	 * 获取所有业务员信息
	 * @return
	 * @throws Exception
	 */
	public List<AdminUser> getAdminUserList() throws Exception;

	/**
	 * 根据用户名删除业务员
	 * @param userName
	 * @return 成功返回0，否则返回1
	 * @throws Exception
	 */
	public int deleteAdminUser(String userName) throws Exception;

	
	/**
	 * 删除普通用户
	 * @param userName
	 * @return 成功返回0，否则返回1
	 * @throws Exception
	 */
	public int deleteUser(String userName) throws Exception;
	
}
