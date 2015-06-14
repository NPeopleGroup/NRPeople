package com.hyd.northpj.action;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.hyd.northpj.entity.Question;
import com.hyd.northpj.service.impl.QuestionService;
import com.opensymphony.xwork2.ActionContext;

public class AdminQuestionAddAction extends ModelAction<Question> {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8604571401832028374L;
	private Question question = new Question();

	public Question getModel() {
		return question;
	}

	private File image; // �ϴ����ļ�
	private String imageFileName; // �ļ�����
	private String imageContentType; // �ļ�����

	public String execute() throws Exception {

		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/img");
		System.out.println(realpath);		
		System.out.println(image);
		try {

			if (image != null) {
				File savefile = new File(new File(realpath), imageFileName);
				if (!savefile.getParentFile().exists())
					savefile.getParentFile().mkdirs();
				FileUtils.copyFile(image, savefile);
				ActionContext.getContext().put("message", "�ļ��ϴ��ɹ�");
				System.out.println("�ļ��ϴ��ɹ�");
			}

			QuestionService questionService = new QuestionService();

			if (0 == questionService.addQuestion(question)) {

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

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}
}
