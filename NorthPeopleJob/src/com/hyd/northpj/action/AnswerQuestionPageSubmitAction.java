package com.hyd.northpj.action;

import com.hyd.northpj.entity.Answer;
import com.hyd.northpj.service.impl.AnswerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class AnswerQuestionPageSubmitAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1344904021439220859L;
	private String id;
	private String option;
	private String nextId;

	@Override
	public String execute() throws Exception {

		Answer answer = new Answer();
		answer.setQuestionId(id);
		answer.setUsername(ActionContext.getContext().getSession()
				.get("NorthPeopleJob_username").toString());
		answer.setAnswer(option.substring(0, 1));

		AnswerService answerService = new AnswerService();
		answerService.answerQuestion(answer);

		setNextId(option.substring(2, option.length()));
		System.out.println(nextId);
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getOption() {
		return option;
	}

	public void setOption(String option) {
		this.option = option;
	}

	public String getNextId() {
		return nextId;
	}

	public void setNextId(String nextId) {
		this.nextId = nextId;
	}

}
