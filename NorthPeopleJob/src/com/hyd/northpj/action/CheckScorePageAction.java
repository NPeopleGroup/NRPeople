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

		
		//在技能(职称)和技能(职业资格)中取值比较大的那个
		EvaluationScore technicalEvaluationScore = new EvaluationScore();
		technicalEvaluationScore.setQuestionType("技能");
		technicalEvaluationScore.setQuestionScore("0");
		for (EvaluationScore evaluationScore : evaluationScoreList) {
			if (evaluationScore.getQuestionType().equals("技能(职业资格)")) {
				if(Float.parseFloat(evaluationScore.getQuestionScore())>=Float.parseFloat(technicalEvaluationScore.getQuestionScore())){
					technicalEvaluationScore.setQuestionScore(evaluationScore.getQuestionScore());
				}
			}
			if (evaluationScore.getQuestionType().equals("技能(职称)")) {
				if(Float.parseFloat(evaluationScore.getQuestionScore())>=Float.parseFloat(technicalEvaluationScore.getQuestionScore())){
					technicalEvaluationScore.setQuestionScore(evaluationScore.getQuestionScore());
				}
			}

		}

		for (int i = 0, len = evaluationScoreList.size(); i < len; ++i) {
			if (evaluationScoreList.get(i).getQuestionType().equals("技能(职称)")
					|| evaluationScoreList.get(i).getQuestionType()
							.equals("技能(职业资格)")) {
				evaluationScoreList.remove(i);
				--len;
				--i;
			}
		}
		evaluationScoreList.add(technicalEvaluationScore);
		return SUCCESS;
	}
}
