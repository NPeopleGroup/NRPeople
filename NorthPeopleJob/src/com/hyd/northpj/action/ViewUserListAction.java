package com.hyd.northpj.action;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

import com.hyd.northpj.model.UserList;
import com.hyd.northpj.service.impl.AnalysisService;

public class ViewUserListAction extends ModelAction<UserList> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 6060692841374726804L;

	private UserList userList = new UserList();

	public UserList getModel() {
		return userList;
	}

	public String execute() {
		try {
			AnalysisService analysisService = new AnalysisService();

			if (null == userList.getTimeSpan()) {
				DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
				userList.setUserList(analysisService.getUserList(
						fmt.parse(userList.getBeginDate()),
						fmt.parse(userList.getEndDate())));
			} else {

				Date beginDate = new Date();
				Date endDate = new Date();
				Calendar calendar = new GregorianCalendar();

				switch (userList.getTimeSpan()) {
				case "today":
					userList.setUserList(analysisService.getUserList(beginDate,
							endDate));
					break;
				case "last_three_days":
					calendar.setTime(beginDate);
					calendar.add(Calendar.DATE, -2);
					beginDate = calendar.getTime();
					userList.setUserList(analysisService.getUserList(beginDate,
							endDate));
					break;
				case "this_week":
					calendar.setTime(beginDate);
					calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
					beginDate = calendar.getTime();
					calendar.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
					calendar.add(Calendar.DATE, 1);
					endDate = calendar.getTime();
					userList.setUserList(analysisService.getUserList(beginDate,
							endDate));
					break;
				case "this_month":
					calendar.setTime(beginDate);
					calendar.set(Calendar.DAY_OF_MONTH, 1);
					calendar.add(Calendar.MONTH, 1);
					calendar.add(Calendar.DATE, -1);
					endDate = calendar.getTime();

					calendar.setTime(beginDate);
					calendar.set(Calendar.DAY_OF_MONTH, 1);
					beginDate = calendar.getTime();

					userList.setUserList(analysisService.getUserList(beginDate,
							endDate));
					break;
				case "all":

					DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
					beginDate = fmt.parse("2000-01-01");
					userList.setUserList(analysisService.getUserList(beginDate,
							endDate));
					break;
				}

			}
			return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return INPUT;
	}
}
