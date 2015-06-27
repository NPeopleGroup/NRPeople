package com.hyd.northpj.action;

import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.QuestionService;
import com.opensymphony.xwork2.ActionSupport;

public class AnswerQuestionPageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5561112297024954096L;
	private String id;
	private Question question;

	@Override
	public String execute() throws Exception {

		QuestionService myQuestionService = new QuestionService();
		setQuestion(myQuestionService.getQuestion(id));

		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}
}
