package com.hyd.northpj.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class TestMain {

	public static void main(String[] args) {

		// String value = null;
		//
		// if (value == null||value.equals("")) {
		// System.out.println(1);
		// }
		System.out.println("Begin");
		Date beginDate = new Date();// 取时间
		Date endDate = new Date();// 取时间

		Calendar calendar = new GregorianCalendar();

		switch ("last_seven_days") {
		case "today":

			break;
		case "last_three_days":
			calendar.setTime(beginDate);
			calendar.add(Calendar.DATE, -2);
			beginDate = calendar.getTime();

			break;
		case "last_seven_days":

			calendar.setTime(beginDate);
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
			beginDate = calendar.getTime();
			calendar.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);
			calendar.add(Calendar.DATE, 1);
			endDate = calendar.getTime();
			
			System.out.println(beginDate);
			System.out.println(endDate);
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

			break;
		case "all":

			DateFormat fmt = new SimpleDateFormat("yyyy-MM-dd");
			try {
				beginDate = fmt.parse("2000-01-01");
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println(beginDate);
			System.out.println(endDate);
			break;
		}

	}

}
