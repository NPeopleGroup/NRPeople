package com.hyd.northpj.dao.interfaces;

import java.util.ArrayList;
import java.util.Date;

import com.hyd.northpj.entity.User;

public interface AnalysisDaoInterface {

	/**
	 * 查询时间段内的一组用户
	 *
	 * @param beginDate
	 * @param endDate
	 * @return 一组用户
	 * @throws Exception
	 */
	public ArrayList<User> selectUserList(Date beginDate, Date endDate)
			throws Exception;

	/**
	 * 查询时间段内的用户的得分情况
	 * 
	 * @param beginDate
	 * @param endDate
	 * @return 得分情况(一组<分数,成绩>对，例如：120，11，125，8，130，4)
	 * @throws Exception
	 */
	public ArrayList<String> selectScoreCountList(Date beginDate, Date endDate)
			throws Exception;

	/**
	 * 查询时间段内的用户的办理进度情况
	 * 
	 * @param beginDate
	 * @param endDate
	 * @return 进度情况(一组<进度,成绩>对，例如：申请，11，正在办理，8，成功，4)
	 * @throws Exception
	 */
	public ArrayList<String> selectProgressCountList(Date beginDate,
			Date endDate) throws Exception;
}
