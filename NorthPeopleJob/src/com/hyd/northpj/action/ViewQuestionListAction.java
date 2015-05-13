package com.hyd.northpj.action;

import com.hyd.northpj.model.QuestionList;
import com.hyd.northpj.service.impl.QuestionService;

public class ViewQuestionListAction extends ModelAction<QuestionList> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4725593593249226683L;
	private QuestionList questions = new QuestionList();

	public QuestionList getModel() {
		return questions;
	}

	public String execute() {
		try {
			QuestionService questionService = new QuestionService();
			questions.setQuestionList(questionService.getQuestionList());
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return INPUT;
	}
}
