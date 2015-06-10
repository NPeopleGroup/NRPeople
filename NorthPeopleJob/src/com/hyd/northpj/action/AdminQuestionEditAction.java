package com.hyd.northpj.action;

import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.QuestionService;

public class AdminQuestionEditAction extends ModelAction<Question> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6088908569597574790L;
	private Question question = new Question();

	public Question getModel() {
		return question;
	}

	public String execute() throws Exception {

		try {
			QuestionService questionService = new QuestionService();

			if (0 == questionService.setQuestion(question)) {

				return SUCCESS;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return INPUT;
	}

}
