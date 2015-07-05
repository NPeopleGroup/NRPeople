package com.hyd.northpj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hyd.northpj.dao.interfaces.AdminUserDaoInterface;
import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.entity.User;
import com.hyd.northpj.util.HibernateSessionFactory;

public class AdminUserDao implements AdminUserDaoInterface {
	private Session session = HibernateSessionFactory.getSession();
	private Transaction tx = session.beginTransaction();
	private Query query;

	@Override
	public int insertUser(AdminUser adminUser) throws Exception {
		// TODO Auto-generated method stub
		session.save(adminUser);
		tx.commit();
		session.close();
		return 0;
		
	}

	@Override
	public String selectUserPassword(String username) throws Exception {
		// TODO Auto-generated method stub
		String password=null;
		query=session.createQuery("from AdminUser where username="+username);
		@SuppressWarnings("unchecked")
		List<AdminUser> adminuser=query.list();
		for(AdminUser AdminUser:adminuser){
			password=AdminUser.getPassword();
		}
		return password;
	}

	@Override
	public int updateUserPassword(AdminUser adminUser) throws Exception {
		// TODO Auto-generated method stub
		String password=adminUser.getPassword();
		adminUser=(AdminUser)session.get(User.class,adminUser.getSn());
		adminUser.setPassword(password);
		session.save(adminUser);
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public int updateUserInformation(AdminUser adminUser) throws Exception {
		// TODO Auto-generated method stub
		session.update(adminUser);
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public AdminUser selectUserInformation(String username)
			throws Exception {
		// TODO Auto-generated method stub
		query=session.createQuery("from AdminUser where username="+username);
		@SuppressWarnings("unchecked")
		List<AdminUser> adminuser=query.list();
		for(AdminUser AdminUser:adminuser){
			return AdminUser;
		}
		return null;
	}

	@Override
	public List<AdminUser> selectAllUsers() throws Exception {
		// TODO Auto-generated method stub
		String sqlStatement="from AdminUser";
		query=session.createQuery(sqlStatement);
		List<AdminUser> myUserList=query.list();
		return myUserList;
	}

    //public static void main(String[] args) throws Exception{
    	//AdminUserDao ad=new AdminUserDao();
    	//AdminUser au=new AdminUser();
    	//au=ad.selectUserInformation("13821788888");
    	//System.out.print(au.getName());
    //}

}
