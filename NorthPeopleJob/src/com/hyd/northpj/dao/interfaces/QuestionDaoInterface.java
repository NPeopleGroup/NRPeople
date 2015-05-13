package com.hyd.northpj.dao.interfaces;

import java.util.List;

import com.hyd.northpj.entity.Question;

public interface QuestionDaoInterface {

	/**
	 * 获取一组问题
	 * 
	 * @param
	 * @return 一组问题的列表
	 * @throws Exception
	 */
	public List<Question> selectQuestionList() throws Exception;

	/**
	 * 添加一个问题
	 * 
	 * @param question
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int insertQuestion(Question question) throws Exception;

	/**
	 * 获取一个问题
	 * 
	 * @param id
	 * @return 返回获取到的问题
	 * @throws Exception
	 */
	public Question selectQuestion(String id) throws Exception;

	/**
	 * 更新问题内容
	 * 
	 * @param question
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateQuestion(Question question) throws Exception;

	/**
	 * 删除问题内容
	 * 
	 * @param id
	 * @return 一个试题的全部内容
	 * @throws Exception
	 */
	public int deleteQuestion(String id) throws Exception;

}
