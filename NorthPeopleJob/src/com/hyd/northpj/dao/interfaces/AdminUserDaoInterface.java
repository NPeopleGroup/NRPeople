package com.hyd.northpj.dao.interfaces;

import java.util.List;

import com.hyd.northpj.entity.AdminUser;

public interface AdminUserDaoInterface {
	/**
	 * 增加用户
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int insertUser(AdminUser adminUser) throws Exception;

	/**
	 * 获取用户密码
	 * 
	 * @param adminUser
	 * @return 用户密码
	 * @throws Exception
	 */
	public String selectUserPassword(String username) throws Exception;

	/**
	 * 设置用户密码
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateUserPassword(AdminUser adminUser) throws Exception;

	/**
	 * 设置用户信息
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateUserInformation(AdminUser adminUser) throws Exception;

	/**
	 * 获取单一用户信息
	 * 
	 * @param adminUser
	 * @return 用户信息
	 * @throws Exception
	 */
	public AdminUser selectUserInformation(String username) throws Exception;
	
	/**
	 * 获取所有用户信息
	 * @return
	 * @throws Exception
	 */
	public List<AdminUser> selectAllUsers() throws Exception;
}
