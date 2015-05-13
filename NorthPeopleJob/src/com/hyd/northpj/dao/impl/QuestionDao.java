package com.hyd.northpj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hyd.northpj.dao.interfaces.QuestionDaoInterface;
import com.hyd.northpj.entity.Question;
import com.hyd.northpj.util.HibernateSessionFactory;

public class QuestionDao implements QuestionDaoInterface {
    
	private Session session = HibernateSessionFactory.getSession();
	private Transaction tx = session.beginTransaction();
	private Query query;

	@Override
	public List<Question> selectQuestionList() throws Exception {
		// TODO Auto-generated method stub
		query=session.createQuery("from Question");
		@SuppressWarnings("unchecked")
		List<Question> questionList=query.list();
		return questionList;
	}

	@Override
	public int insertQuestion(Question question) throws Exception {
		// TODO Auto-generated method stub
		session.save(question);
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public Question selectQuestion(String id) throws Exception {
		// TODO Auto-generated method stub
		query = session.createQuery("from Question where id="
				+ id);
		@SuppressWarnings("unchecked")
		List<Question> Question =	query.list();
		for (Question tempQuestion : Question) {
			return tempQuestion;
		}
		tx.commit();
		session.close();
		return null;
	}

	@Override
	public int updateQuestion(Question question) throws Exception {
		// TODO Auto-generated method stub
		question=(Question)session.get(Question.class, question.getSn());
		session.save(question);
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public int deleteQuestion(String id) throws Exception {
		// TODO Auto-generated method stub
		query = session.createQuery("from Question where id="
				+ id);
		@SuppressWarnings("unchecked")
		List<Question> list=query.list();
		for(Question Question:list){
			session.delete(Question);
		}
		tx.commit();	
	    session.close();
		return 0;
	}
	//public static void main(String[] args) throws Exception{
	//	QuestionDao qd=new QuestionDao();
	//	Question q=new Question();
	//	qd.deleteQuestion("3");
//	}

}
