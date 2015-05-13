package com.hyd.northpj.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hyd.northpj.dao.interfaces.AnswerDaoInterface;
import com.hyd.northpj.entity.Answer;
import com.hyd.northpj.model.EvaluationFile;
import com.hyd.northpj.model.EvaluationScore;
import com.hyd.northpj.util.HibernateSessionFactory;

public class AnswerDao implements AnswerDaoInterface {
     
	private Session session = HibernateSessionFactory.getSession();
	private Transaction tx = session.beginTransaction();
	Query query=null;
	@Override
	public int insertAnswer(Answer answer) throws Exception {
		// TODO Auto-generated method stub
		session.save(answer);   
		tx.commit();
		session.close();
		return 0;
	
	}

	@Override
	public ArrayList<EvaluationScore> selectEvaluationScore(String username)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<EvaluationFile> selectEvaluationFile(String username)
			throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
