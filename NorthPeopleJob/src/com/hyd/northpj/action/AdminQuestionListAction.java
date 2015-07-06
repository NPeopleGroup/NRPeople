package com.hyd.northpj.action;

import java.util.List;

import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.QuestionService;
import com.hyd.northpj.util.CommonUtil;
import com.opensymphony.xwork2.ActionSupport;

public class AdminQuestionListAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5742246754557711658L;
	private String questionType;
	@Override
	public String execute() throws Exception {
		if(questionType!=null){
		switch(questionType)

		{

		case "age":setQuestionType("ƒÍ¡‰");

		break;

		}
		System.out.println(questionType);
		}
		QuestionService questionService = new QuestionService();
		List<Question> questionList = questionService.getQuestionList();
		CommonUtil.toBeJson(questionList, questionList.size());

		return null;
	}
	public String getQuestionType() {
		return questionType;
	}
	public void setQuestionType(String questionType) {
		this.questionType = questionType;
	}

	/**
	 * 
	 */

}
