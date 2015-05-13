package com.hyd.northpj.dao.impl;

import java.util.ArrayList;
import java.util.Date;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hyd.northpj.dao.interfaces.AnalysisDaoInterface;
import com.hyd.northpj.entity.User;
import com.hyd.northpj.util.HibernateSessionFactory;

public class AnalysisDao implements AnalysisDaoInterface {
	private Session session = HibernateSessionFactory.getSession();
	private Transaction tx = session.beginTransaction();
	@Override
	public ArrayList<User> selectUserList(Date beginDate, Date endDate)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<String> selectScoreCountList(Date beginDate, Date endDate)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<String> selectProgressCountList(Date beginDate,
			Date endDate) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
