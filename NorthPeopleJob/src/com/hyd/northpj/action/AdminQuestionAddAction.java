package com.hyd.northpj.action;

import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.QuestionService;

public class AdminQuestionAddAction extends ModelAction<Question> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8604571401832028374L;
	private Question question = new Question();

	public Question getModel() {
		return question;
	}

	public String execute() throws Exception {

		try {
			QuestionService questionService = new QuestionService();

			if (0 == questionService.addQuestion(question)) {

				return SUCCESS;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return INPUT;
	}
}
