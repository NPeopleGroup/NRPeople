package com.hyd.northpj.action;

import java.util.ArrayList;
import java.util.List;

import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.QuestionService;
import com.opensymphony.xwork2.ActionSupport;

public class AdminQuestionEditPageAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5356757080370419771L;
	private String id;
	private Question question;
	private List<Question> gotoList;

	@Override
	public String execute() throws Exception {

		List<Question> gotoList = new ArrayList<Question>();
		QuestionService myQuestionService = new QuestionService();
		gotoList = myQuestionService.getQuestionList();

		Question finish = new Question();
		finish.setId("´ðÌâ½áÊø");
		gotoList.add(finish);
		setGotoList(gotoList);
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

	public List<Question> getGotoList() {
		return gotoList;
	}

	public void setGotoList(List<Question> gotoList) {
		this.gotoList = gotoList;
	}

}
