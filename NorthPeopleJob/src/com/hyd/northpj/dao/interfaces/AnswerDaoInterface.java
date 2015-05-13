package com.hyd.northpj.dao.interfaces;

import java.util.ArrayList;

import com.hyd.northpj.entity.Answer;
import com.hyd.northpj.model.EvaluationFile;
import com.hyd.northpj.model.EvaluationScore;

public interface AnswerDaoInterface {
	/**
	 * 增加一个答案
	 * 
	 * @param adminUser
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int insertAnswer(Answer answer) throws Exception;

	/**
	 * 获取用户的评价分数集合
	 * 
	 * @param username
	 * @return 评价分数集合，评价类型，该类型的成绩
	 * @throws Exception
	 */
	public ArrayList<EvaluationScore> selectEvaluationScore(String username)
			throws Exception;

	/**
	 * 获取用户的评价材料集合
	 * 
	 * @param username
	 * @return 评价材料集合，评价材料，该材料所属部门
	 * @throws Exception
	 */
	public ArrayList<EvaluationFile> selectEvaluationFile(String username) throws Exception;

}
