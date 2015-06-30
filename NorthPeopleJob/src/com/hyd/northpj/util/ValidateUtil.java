package com.hyd.northpj.util;

import java.lang.reflect.Field;
import java.util.Date;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;

import com.hyd.northpj.entity.AdminUser;
import com.hyd.northpj.entity.Answer;
import com.hyd.northpj.entity.Question;
import com.hyd.northpj.entity.User;


public class ValidateUtil {
	
	private static	Logger logger = Logger.getLogger(ValidateUtil.class);    
	//防sql注入正则字符串
	private static String reg = "(?:')|(?:--)|(/\\*(?:.|[\\n\\r])*?\\*/)|"
			+ "(\\b(select|update|and|or|delete|insert|trancate|char|into|substr|ascii|declare|exec|count|master|into|drop|execute)\\b)";

	private static Pattern sqlPattern = Pattern.compile(reg, Pattern.CASE_INSENSITIVE);

	/**
	 * 验证用户名和密码是否为空，并对sql语句进行过滤，以防止注入
	 * @param loginUser
	 * @return 返回验证结果
	 * 1-->用户名为空，2--->用户名未通过sql安全性验证，
	 * 3-->用户密码为空，4--->用户密码未通过sql安全性验证，
	 * 0 通过验证
	 */
	public static int validAdminUser(AdminUser loginUser){
		if(loginUser.getUsername()==null||loginUser.getUsername().trim().equals(""))
		{
			return 1;
		}else if(!isPassSqlFilter(loginUser.getUsername()))
		{
			return 2;
		}
		if(loginUser.getUsername()==null||loginUser.getPassword().trim().equals(""))
		{
			return 3;
		}else if(!isPassSqlFilter(loginUser.getPassword()))
		{
			return 4;
		}
		return 0;
	}

	
	/**
	 * 验证用户名和密码是否为空，并对sql语句进行过滤，以防止注入
	 * @param loginUser
	 * @return 返回验证结果
	 * 1-->用户名为空，2--->用户名未通过sql安全性验证，
	 * 3-->用户密码为空，4--->用户密码未通过sql安全性验证，
	 * 0 通过验证
	 */
	public static int validUser(User loginUser){
		if(loginUser.getUsername()==null||loginUser.getUsername().trim().equals(""))
		{
			return 1;
		}else if(!isPassSqlFilter(loginUser.getUsername()))
		{
			return 2;
		}
		if(loginUser.getUsername()==null||loginUser.getPassword().trim().equals(""))
		{
			return 3;
		}else if(!isPassSqlFilter(loginUser.getPassword()))
		{
			return 4;
		}
		return 0;
	}
	
	
	/**
	 * 验证answe相关信息是否为空，并对sql语句进行过滤，以防止注入
	 * @param answer 要验证的answer
	 * @return
	 * 1-->用户名为空，         2--->用户名未通过sql安全性验证，
	 * 3-->questionId空，4--->questionId未通过sql安全性验证，
	 * 5-->answer为空，      6--->用answer未通过sql安全性验证，
	 * 0 通过验证 
	 */
	public static int validateAnswer(Answer answer){
		if(answer.getUsername()==null||answer.getUsername().trim().equals(""))
		{
			return 1;
		}else if(!isPassSqlFilter(answer.getUsername()))
		{
			return 2;
		}
		if(answer.getQuestionId()==null||answer.getQuestionId().equals(""))
		{
			return 3;
		}else if(!isPassSqlFilter(answer.getQuestionId()))
		{
			return 4;
		}else if(answer.getAnswer()==null||answer.getAnswer().equals("")){
			return 5;
		}else if(!isPassSqlFilter(answer.getAnswer()))
		{
			return 6;
		}
		return 0;
	}
	
	/**
	 * 验证用户所有属性的安全性
	 * @param loginUser
	 * @return 返回验证结果，1-->未通过验证，0-->通过验证
	 * @throws SecurityException
	 * @throws ClassNotFoundException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	public static int validateAdminUserAllProperty(AdminUser loginUser) throws SecurityException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException{
		
		Field[] fds = Class.forName("com.hyd.northpj.entity.AdminUser")
				.getDeclaredFields();

		for (int i = 0; i < fds.length; i++) {
			Object userProperty = fds[i].get(loginUser);
			if (userProperty != null
					&& !isPassSqlFilter(userProperty.toString())) {
				return 1;
			}
		}
		return 0;
	}
	
	/**
	 * 验证用户所有属性的安全性
	 * @param loginUser
	 * @return 返回验证结果，1-->未通过验证，0-->通过验证
	 * @throws SecurityException
	 * @throws ClassNotFoundException
	 * @throws IllegalArgumentException
	 * @throws IllegalAccessException
	 */
	public static int validateUserAllProperty(User loginUser) throws SecurityException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException{
		
		Field[] fds = Class.forName("com.hyd.northpj.entity.User")
				.getDeclaredFields();

		for (int i = 0; i < fds.length; i++) {
			Object userProperty = fds[i].get(loginUser);
			if (userProperty != null
					&& !isPassSqlFilter(userProperty.toString())) {
				return 1;
			}
		}
		return 0;
	}

	public static int validateQuestionAllProperty(Question question) throws SecurityException, ClassNotFoundException, IllegalArgumentException, IllegalAccessException{
		
		Field[] fds = Class.forName("com.hyd.northpj.entity.Question")
				.getDeclaredFields();

		for (int i = 0; i < fds.length; i++) {
			Object userProperty = fds[i].get(question);
			if (userProperty != null
					&& !isPassSqlFilter(userProperty.toString())) {
				return 1;
			}
		}
		return 0;
	}
	/**
	 * 验证日期非空，并有效防止sql注入
	 * @param question
	 * @return 返回验证结果
	 * 1-->id为null，2-->id为空，3-->id未通过安全性验证
	 */
	public static int validateQuestionId(Question question)
	{
		if(question.getId()==null)
		{
			return 1;
		}else if(question.getId().equals(""))
		{
			return 2;
		}else if(!isPassSqlFilter(question.getId()))
		{
			return 3;
		}
		return 0;
	}
	
	/**
	 * 验证是否通过防sql注入安全性验证
	 * 
	 * @param sourceSql 需验证的sql语句
	 * @return 验证结果 true-->验证通过，false未通过验证
	 */
	public static boolean isPassSqlFilter(String sourceSql) {

		if (sqlPattern.matcher(sourceSql.trim()).find()) {  
	        logger.error("未能通过过滤器：p=" + sourceSql);  
	          
	        return false;  
	    }  
	    return true; 
	}
	
	
	/**
	 * 验证日期的有效性
	 * @param beginDate 开始日期j
	 * @param endDate 结束日期
	 * @return 返回验证结果
	 * true-->通过验证，false-->未通过验证
	 */
	public static boolean isPassDateFilter(Date beginDate, Date endDate) {
		return beginDate != null
				&& ValidateUtil.isPassSqlFilter(beginDate.toString())
				&& endDate != null
				&& ValidateUtil.isPassSqlFilter(endDate.toString());
	}
}
