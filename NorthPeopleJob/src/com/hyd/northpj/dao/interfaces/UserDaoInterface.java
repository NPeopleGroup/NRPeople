package com.hyd.northpj.dao.interfaces;

import com.hyd.northpj.entity.User;

public interface UserDaoInterface {
	/**
	 * 增加用户
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int insertUser(User user) throws Exception;

	/**
	 * 获取用户密码
	 * 
	 * @param user
	 * @return 用户密码
	 * @throws Exception
	 */
	public String selectUserPassword(String username) throws Exception;

	/**
	 * 设置用户密码
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateUserPassword(User user) throws Exception;

	/**
	 * 设置用户信息
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateUserInformation(User user) throws Exception;

	/**
	 * 获取用户信息
	 * 
	 * @param user
	 * @return 用户信息
	 * @throws Exception
	 */
	public User selectUserInformation(String username) throws Exception;

	/**
	 * 设置用户登记时间
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateUserApplicationTime(User user) throws Exception;

	/**
	 * 设置用户办事进度
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateUserAcceptionProgress(User user) throws Exception;

	/**
	 * 更新用户预约时间
	 * 
	 * @param user
	 * @return 成功返回0，失败返回非0
	 * @throws Exception
	 */
	public int updateUserAppointmentTime(User user) throws Exception;

	// /**
	// * 获取所需的个人材料列表
	// *
	// * @param user
	// * @return 个人材料列表，每个材料一个string
	// * @throws Exception
	// */
	// public ArrayList<String> selectFileList(User user) throws Exception;
	//
	// /**
	// * 获取用户的答题成绩列表(一组<分类,成绩>对儿，例如：年龄，35，住房，40，社保，45……)
	// *
	// * @param user
	// * @return 答题成绩列表(一组<分类,成绩>对，例如：年龄，35，住房，40，社保，45……)
	// * @throws Exception
	// */
	// public ArrayList<String> selectEvaluationScore(User user) throws
	// Exception;
	//
	// /**
	// * 查询时间段内的用户的得分情况
	// *
	// * @param beginDate
	// * @param endDate
	// * @return 得分情况(一组<分类,成绩>对，例如：120，11，125，8，130，4)
	// * @throws Exception
	// */
	// public ArrayList<String> selectUsersByScore(Date beginDate, Date endDate)
	// throws Exception;
	//
	// /**
	// * 查询时间段内的用户的办理进度情况
	// *
	// * @param beginDate
	// * @param endDate
	// * @return 进度情况(一组<进度,成绩>对，例如：申请，11，正在办理，8，成功，4)
	// * @throws Exception
	// */
	// public ArrayList<String> selectUsersByProgress(Date beginDate, Date
	// endDate)
	// throws Exception;

	// /**
	// * 查询时间段内的一组用户
	// *
	// * @param beginDate
	// * @param endDate
	// * @return 一组用户
	// * @throws Exception
	// */
	// public ArrayList<User> getUsersByDate(Date beginDate, Date endDate)
	// throws Exception;
	//
	// /**
	// * 根据进度获取一组用户
	// *
	// * @param progress
	// * @return 一组用户
	// * @throws Exception
	// */
	// public ArrayList<User> getUsersByProgress(String progress) throws
	// Exception;
}
