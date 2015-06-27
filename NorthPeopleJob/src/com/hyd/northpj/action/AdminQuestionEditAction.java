package com.hyd.northpj.action;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.QuestionService;

public class AdminQuestionEditAction extends ModelAction<Question> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6088908569597574790L;
	private Question question = new Question();

	public Question getModel() {
		return question;
	}

	private File image; // 上传的文件
	private String imageContentType; // 文件类型

	public String execute() throws Exception {

		try {

			if (image != null) {
				String realpath = ServletActionContext.getServletContext()
						.getRealPath("/img");
				File savefile = new File(new File(realpath), "question-"
						+ question.getId() + "."
						+ imageContentType.replace("image/", ""));
				if (!savefile.getParentFile().exists())
					savefile.getParentFile().mkdirs();
				FileUtils.copyFile(image, savefile);

			}
			QuestionService questionService = new QuestionService();

			if (0 == questionService.setQuestion(question)) {

				return SUCCESS;

			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return INPUT;
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
}
