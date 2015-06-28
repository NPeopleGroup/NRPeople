package com.hyd.northpj.action;

import java.util.ArrayList;

import com.hyd.northpj.model.EvaluationFile;
import com.hyd.northpj.service.impl.AnswerService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class CheckFilePageAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6503952852495833379L;
	private ArrayList<EvaluationFile> evaluationFileList = new ArrayList<EvaluationFile>();

	public String execute() throws Exception {

		AnswerService answerService = new AnswerService();
		try {
			evaluationFileList = answerService.getEvaluationFile(ActionContext
					.getContext().getSession().get("NorthPeopleJob_username")
					.toString());
		} catch (Exception e) {
			return "overtime";
		}

		for (EvaluationFile EvaluationFile : evaluationFileList) {
			System.out.println(EvaluationFile.getQuestionFile() + "--"
					+ EvaluationFile.getQuestionDepartment() + "--"
					+ EvaluationFile.getQuestionHint());
		}
		return SUCCESS;
	}

	public ArrayList<EvaluationFile> getEvaluationFileList() {
		return evaluationFileList;
	}

	public void setEvaluationFileList(
			ArrayList<EvaluationFile> evaluationFileList) {
		this.evaluationFileList = evaluationFileList;
	}
}