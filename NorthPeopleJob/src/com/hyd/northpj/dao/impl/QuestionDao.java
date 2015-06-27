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
		query = session.createQuery("from Question Q order by Q.id");
		@SuppressWarnings("unchecked")
		List<Question> questionList = query.list();
		return questionList;
	}

	@Override
	public int insertQuestion(Question question) throws Exception {
		// TODO Auto-generated method stub
		session.clear();
		session.save(question);
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public Question selectQuestion(String id) throws Exception {
		// TODO Auto-generated method stub
		query = session.createQuery("from Question where id='" + id + "'");
		@SuppressWarnings("unchecked")
		List<Question> Question = query.list();
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
		// System.out.println("updateQuestion:"+question.getSn()+question.getId());
		//
		// question = (Question) session.get(Question.class, question.getSn());
		session.clear();
		session.update(question);
		tx.commit();
		session.close();
		return 0;
	}

	@Override
	public int deleteQuestion(String id) throws Exception {
		// TODO Auto-generated method stub
		// query = session.createQuery("delete Question where id=" + id);
		// @SuppressWarnings("unchecked")
		// List<Question> list = query.list();
		// for (Question Question : list) {
		// session.delete(Question);
		// }
		// tx.commit();
		// session.close();

		String hql = "delete Question as p where p.id=?";
		Query query = session.createQuery(hql);
		query.setString(0, id);
		query.executeUpdate();
		session.beginTransaction().commit();

		return 0;
	}
	// public static void main(String[] args) throws Exception{
	// QuestionDao qd=new QuestionDao();
	// Question q=new Question();
	// qd.deleteQuestion("3");
	// }

}
