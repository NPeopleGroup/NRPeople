package com.hyd.northpj.action;

import java.util.ArrayList;

import com.hyd.northpj.model.EvaluationScore;
import com.hyd.northpj.service.impl.AnswerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckScorePageAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1689008362908670136L;
	private ArrayList<EvaluationScore> evaluationScoreList = new ArrayList<EvaluationScore>();

	public ArrayList<EvaluationScore> getEvaluationScoreList() {
		return evaluationScoreList;
	}

	public void setEvaluationScoreList(
			ArrayList<EvaluationScore> evaluationScoreList) {
		this.evaluationScoreList = evaluationScoreList;
	}

	public String execute() throws Exception {

		AnswerService answerService = new AnswerService();
		try {
			evaluationScoreList = answerService
					.getEvaluationScore(ActionContext.getContext().getSession()
							.get("NorthPeopleJob_username").toString());
		} catch (Exception e) {
			return "overtime";
		}

		for (EvaluationScore evaluationScore : evaluationScoreList) {
			System.out.println(evaluationScore.getQuestionType() + "--"
					+ evaluationScore.getQuestionScore());
		}
		return SUCCESS;
	}
}
