package com.hyd.northpj.service.interfaces;

import java.util.ArrayList;

import com.hyd.northpj.entity.Answer;
import com.hyd.northpj.model.EvaluationFile;
import com.hyd.northpj.model.EvaluationScore;

public interface AnswerServiceInterface {

	/**
	 * 回答一个问题
	 * 
	 * @param userName
	 * @param questionId
	 * @param answer
	 * @return 正确完成回答过程则返回0
	 * @throws Exception
	 */
	public int answerQuestion(Answer answer)
			throws Exception;

	/**
	 * 获取用户的评价分数集合
	 * 
	 * @param username
	 * @return 评价分数集合，评价类型，该类型的成绩
	 * @throws Exception
	 */
	public ArrayList<EvaluationScore> getEvaluationScore(String username)
			throws Exception;

	/**
	 * 获取用户的评价材料集合
	 * 
	 * @param username
	 * @return 评价材料集合，评价材料，该材料所属部门
	 * @throws Exception
	 */
	public ArrayList<EvaluationFile> getEvaluationFile(String username) throws Exception;



}
