package com.hyd.northpj.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.transform.Transformers;

import com.hyd.northpj.dao.interfaces.AnswerDaoInterface;
import com.hyd.northpj.entity.Answer;
import com.hyd.northpj.model.EvaluationFile;
import com.hyd.northpj.model.EvaluationScore;
import com.hyd.northpj.util.HibernateSessionFactory;

public class AnswerDao implements AnswerDaoInterface {

	private Session session = HibernateSessionFactory.getSession();
	private Transaction tx = session.beginTransaction();
	Query query = null;

	@Override
	public int insertAnswer(Answer answer) throws Exception {

		query = session.createQuery("from Answer where questionId="
				+ answer.getQuestionId() + " and username="
				+ answer.getUsername());
		@SuppressWarnings("unchecked")
		List<Answer> list = query.list();
		for (Answer Answer : list) {
			session.delete(Answer);
		}

		// TODO Auto-generated method stub
		session.save(answer);
		tx.commit();
		session.close();
		return 0;

	}

	@Override
	public ArrayList<EvaluationScore> selectEvaluationScore(String username)
			throws Exception {
		String sql = "select questionObjective,SUM(questionScore) as questionScore from t_answer where username = "
				+ username + " group by questionObjective";
		SQLQuery query = (SQLQuery) session.createSQLQuery(sql);

		List<Object[]> retList = query.list();

		ArrayList<EvaluationScore> EvaluationScoreList = new ArrayList<EvaluationScore>();

		for (Object[] obj : retList) {
			EvaluationScore evaluationScore = new EvaluationScore();
			evaluationScore.setQuestionType(obj[0].toString());
			evaluationScore.setQuestionScore(obj[1].toString());
			EvaluationScoreList.add(evaluationScore);

		}

		return EvaluationScoreList;
	}

	@Override
	public ArrayList<EvaluationFile> selectEvaluationFile(String username)
			throws Exception {
		String sql = "select questionFile,questionDepartment,questionHint as questionScore from t_answer where username = "
				+ username;
		SQLQuery query = (SQLQuery) session.createSQLQuery(sql);

		List<Object[]> retList = query.list();

		ArrayList<EvaluationFile> evaluationFileList = new ArrayList<EvaluationFile>();

		for (Object[] obj : retList) {
			EvaluationFile evaluationFile = new EvaluationFile();
			evaluationFile.setQuestionFile(obj[0].toString());
			evaluationFile.setQuestionDepartment(obj[1].toString());
			evaluationFile.setQuestionHint(obj[2].toString());
			evaluationFileList.add(evaluationFile);

		}

		return evaluationFileList;
	}

}
