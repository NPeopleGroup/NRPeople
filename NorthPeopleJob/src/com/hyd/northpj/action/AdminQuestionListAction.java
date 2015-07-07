package com.hyd.northpj.action;

import java.util.ArrayList;
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

		QuestionService questionService = new QuestionService();
		List<Question> questionList = new ArrayList<Question>();
		if (questionType != null) {
			switch (questionType) {
			case "age":
				setQuestionType("年龄");
				break;
			case "education":
				setQuestionType("教育");
				break;
			case "skills_title":
				setQuestionType("技能(职称)");
				break;
			case "skills_qualifications":
				setQuestionType("技能(职业资格)");
				break;
			case "housing":
				setQuestionType("住房");
				break;
			case "security":
				setQuestionType("社保");
				break;
			case "settled_area":
				setQuestionType("落户地区");
				break;
			case "career":
				setQuestionType("职业");
				break;
			case "investment_tax":
				setQuestionType("投资纳税");
				break;
			case "awards_honor":
				setQuestionType("奖项荣誉");
				break;
			case "marital_status":
				setQuestionType("婚姻状况");
				break;
			case "working_years":
				setQuestionType("工作年限");
				break;
			case "law_integrity":
				setQuestionType("守法诚信");
				break;

			default:
				setQuestionType("年龄");
				break;
			}
			questionList = questionService.getQuestionList(questionType);
		} else {
			questionList = questionService.getQuestionList();
		}

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
