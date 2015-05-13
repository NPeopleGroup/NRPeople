package com.hyd.northpj.service.interfaces;

import com.hyd.northpj.entity.AdminUser;

public interface AdminUserServiceInterface {
	/**
	 * ע��һ������Ա�û�
	 * 
	 * @param adminUser
	 * @return �ɹ�����0��ʧ�ܷ��ط�0
	 * @throws Exception
	 */
	public int register(AdminUser adminUser) throws Exception;

	/**
	 * ����Ա�û���¼
	 * 
	 * @param adminUser
	 * @return �ɹ�����0��ʧ�ܷ��ط�0
	 * @throws Exception
	 */
	public int login(AdminUser adminUser) throws Exception;

	/**
	 * ����Ա�û���������
	 * 
	 * @param adminUser
	 * @return �ɹ�����0��ʧ�ܷ��ط�0
	 * @throws Exception
	 */
	public int changePassword(AdminUser adminUser, String newPassword) throws Exception;
	
	/**
	 * �û��ǼǸ�����Ϣ
	 * 
	 * @param adminUser
	 * @return �ɹ�����0��ʧ�ܷ��ط�0
	 * @throws Exception
	 */
	public int setAdminUserInformation(AdminUser adminUser) throws Exception;

	/**
	 * ��ȡ�û��ĸ�����Ϣ
	 * 
	 * @param username
	 * @return һ������Ա�û�
	 * @throws Exception
	 */
	public AdminUser getAdminUserInformation(String username) throws Exception;

}
