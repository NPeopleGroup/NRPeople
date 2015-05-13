package com.hyd.northpj.service.impl;

import java.util.ArrayList;
import java.util.Date;

import com.hyd.northpj.dao.impl.AnalysisDao;
import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.interfaces.AnalysisServiceInterface;
import com.hyd.northpj.util.ValidateUtil;

public class AnalysisService implements AnalysisServiceInterface {
	private AnalysisDao myAnalysisDao = new AnalysisDao();

	@Override
	public ArrayList<User> getUserList(Date beginDate, Date endDate)
			throws Exception {
		ArrayList<User> myUserList = null;
		// 验证日期有效性
		if (ValidateUtil.isPassDateFilter(beginDate, endDate)) {
			myUserList = new ArrayList<User>();
			myUserList = myAnalysisDao.selectUserList(beginDate, endDate);
		}
		return myUserList;
	}

	@Override
	public ArrayList<String> analyzeUsersByScore(Date beginDate, Date endDate)
			throws Exception {
		// TODO Auto-generated method stub
		ArrayList<String> myScoreList = null;
		// 验证日期有效性
		if (ValidateUtil.isPassDateFilter(beginDate, endDate)) {
			myScoreList = new ArrayList<String>();
			myScoreList = myAnalysisDao
					.selectScoreCountList(beginDate, endDate);
		}
		return myScoreList;
	}

	@Override
	public ArrayList<String> analyzeUsersByProgress(Date beginDate, Date endDate)
			throws Exception {
		// TODO Auto-generated method stub
		ArrayList<String> myProcessList = null;
		if (ValidateUtil.isPassDateFilter(beginDate, endDate)) {
			myProcessList = new ArrayList<String>();
			myProcessList = myAnalysisDao.selectProgressCountList(beginDate,
					endDate);
		}
		return myProcessList;
	}

}
