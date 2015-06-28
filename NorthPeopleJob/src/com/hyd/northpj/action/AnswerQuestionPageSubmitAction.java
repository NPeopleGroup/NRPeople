package com.hyd.northpj.action;

import com.hyd.northpj.entity.Answer;
import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.AnswerService;
import com.hyd.northpj.service.impl.QuestionService;
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
	private Question question;

	@Override
	public String execute() throws Exception {
		QuestionService questionService = new QuestionService();
		question = questionService.getQuestion(id);
		Answer answer = new Answer();
		answer.setQuestionId(id);
		try {

			answer.setUsername(ActionContext.getContext().getSession()
					.get("NorthPeopleJob_username").toString());

		} catch (Exception e) {
			return "overtime";
		}
		answer.setAnswer(option.substring(0, 1));
		answer.setQuestionSn(question.getSn());
		answer.setQuestionType(question.getType());
		answer.setQuestionQuestion(question.getQuestion());

		if (option.substring(0, 1).equals("A")) {
			answer.setQuestionChoice(question.getChoiceA());
			answer.setQuestionGoto(question.getGotoA());
			answer.setQuestionScore(question.getScoreA());
			answer.setQuestionObjective(question.getObjectiveA());
			answer.setQuestionFile(question.getFileA());
			answer.setQuestionDepartment(question.getDepartmentA());
			answer.setQuestionHint(question.getHintA());
		}
		if (option.substring(0, 1).equals("B")) {
			answer.setQuestionChoice(question.getChoiceB());
			answer.setQuestionGoto(question.getGotoB());
			answer.setQuestionScore(question.getScoreB());
			answer.setQuestionObjective(question.getObjectiveB());
			answer.setQuestionFile(question.getFileB());
			answer.setQuestionDepartment(question.getDepartmentB());
			answer.setQuestionHint(question.getHintB());
		}
		if (option.substring(0, 1).equals("C")) {
			answer.setQuestionChoice(question.getChoiceC());
			answer.setQuestionGoto(question.getGotoC());
			answer.setQuestionScore(question.getScoreC());
			answer.setQuestionObjective(question.getObjectiveC());
			answer.setQuestionFile(question.getFileC());
			answer.setQuestionDepartment(question.getDepartmentC());
			answer.setQuestionHint(question.getHintC());
		}
		if (option.substring(0, 1).equals("D")) {
			answer.setQuestionChoice(question.getChoiceD());
			answer.setQuestionGoto(question.getGotoD());
			answer.setQuestionScore(question.getScoreD());
			answer.setQuestionObjective(question.getObjectiveD());
			answer.setQuestionFile(question.getFileD());
			answer.setQuestionDepartment(question.getDepartmentD());
			answer.setQuestionHint(question.getHintD());
		}
		if (option.substring(0, 1).equals("E")) {
			answer.setQuestionChoice(question.getChoiceE());
			answer.setQuestionGoto(question.getGotoE());
			answer.setQuestionScore(question.getScoreE());
			answer.setQuestionObjective(question.getObjectiveE());
			answer.setQuestionFile(question.getFileE());
			answer.setQuestionDepartment(question.getDepartmentE());
			answer.setQuestionHint(question.getHintE());
		}
		if (option.substring(0, 1).equals("F")) {
			answer.setQuestionChoice(question.getChoiceF());
			answer.setQuestionGoto(question.getGotoF());
			answer.setQuestionScore(question.getScoreF());
			answer.setQuestionObjective(question.getObjectiveF());
			answer.setQuestionFile(question.getFileF());
			answer.setQuestionDepartment(question.getDepartmentF());
			answer.setQuestionHint(question.getHintF());
		}

		AnswerService answerService = new AnswerService();
		answerService.answerQuestion(answer);

		setNextId(option.substring(2, option.length()));

		if (nextId.equals("´ðÌâ½áÊø")) {
			System.out.println(nextId);
			return "end";
		}
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
