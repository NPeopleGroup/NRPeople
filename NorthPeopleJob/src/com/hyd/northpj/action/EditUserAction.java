package com.hyd.northpj.action;

import java.util.ArrayList;
import java.util.List;

import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.impl.UserService;
import com.hyd.northpj.util.Relations;

public class EditUserAction extends ModelAction<User>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String userName;
	private User myEditUser=new User();
	private User myUser;
	private UserService myUserService=new UserService();
	private List<Relations> myRelationList=new ArrayList<Relations>();
	public String userInfoUpdate() throws Exception {
		// TODO Auto-generated method stub
		
		myEditUser.setUsername(session.getAttribute("NorthPeopleJob_username").toString());
		myUserService.setInformation(myEditUser);
		return SUCCESS;
	}
	public String userInfoView() throws Exception
	{
		setMyUser(myUserService.getInformation(session.getAttribute("NorthPeopleJob_username").toString()));
		
		/*Field[] fds = Class.forName("com.hyd.northpj.entity.User")
				.getDeclaredFields();
		int i=1;
		for (Field field : fds) {
			String attributeName=field.getName();
			if(attributeName.contains("relation"))
			{
				if(attributeName.equals("relation"+i++))
				{
					if(attributeName.equals(""))
						break;
					else{
						newRelation=new Relations();
					}
					newRelation.
				}
			}
		}*/
		if(myUser.getRelation1()!=null)
			getMyRelationList().add(new Relations(myUser.getRelation1(), myUser.getRelationName1(), myUser.getRelationIDCard1(), myUser.getRelationdegree1()));
		if(myUser.getRelation2()!=null)
			getMyRelationList().add(new Relations(myUser.getRelation2(), myUser.getRelationName2(), myUser.getRelationIDCard2(), myUser.getRelationdegree2()));
		if(myUser.getRelation3()!=null)
			getMyRelationList().add(new Relations(myUser.getRelation3(), myUser.getRelationName3(), myUser.getRelationIDCard3(), myUser.getRelationdegree3()));
		if(myUser.getRelation4()!=null)
			getMyRelationList().add(new Relations(myUser.getRelation4(), myUser.getRelationName4(), myUser.getRelationIDCard4(), myUser.getRelationdegree4()));
		if(myUser.getRelation5()!=null)
			getMyRelationList().add(new Relations(myUser.getRelation5(), myUser.getRelationName5(), myUser.getRelationIDCard5(), myUser.getRelationdegree5()));
		if(myUser.getRelation6()!=null)
			getMyRelationList().add(new Relations(myUser.getRelation6(), myUser.getRelationName6(), myUser.getRelationIDCard6(), myUser.getRelationdegree6()));
		return SUCCESS;
	}
	

	
	public User getModel() {
		return myEditUser;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public User getMyEditUser() {
		return myEditUser;
	}
	public void setMyEditUser(User myEditUser) {
		this.myEditUser = myEditUser;
	}
	public User getMyUser() {
		return myUser;
	}
	public void setMyUser(User myUser) {
		this.myUser = myUser;
	}



	public List<Relations> getMyRelationList() {
		return myRelationList;
	}
	public void setMyRelationList(List<Relations> myRelationList) {
		this.myRelationList = myRelationList;
	}



	
}
