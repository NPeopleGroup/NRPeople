package com.hyd.northpj.dao.impl;

import java.util.List;










import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hyd.northpj.dao.interfaces.MaterialDaoInterface;
import com.hyd.northpj.entity.Material;
import com.hyd.northpj.util.HibernateSessionFactory;

public class MaterialDao implements MaterialDaoInterface {

	private Session mySession=HibernateSessionFactory.getSession();
	private Transaction tx=mySession.beginTransaction();
	Query myQuery=null;
	
	@Override
	public int addNewMaterial(Material materialInfo) throws Exception {
		// TODO Auto-generated method stub
		myQuery = mySession.createQuery("from Material where questionId="
				+ materialInfo.getSn() + " and username="
				+ materialInfo.getName());
		@SuppressWarnings("unchecked")
		List<Material> list = myQuery.list();
		for (Material Answer : list) {
			mySession.delete(Answer);
		}

		// TODO Auto-generated method stub
		mySession.save(materialInfo);
		tx.commit();
		mySession.close();
		return 0;
	}

	@Override
	public int deleteMaterial(int materialId) throws Exception {
		// TODO Auto-generated method stub
		String deleteSql="delete from Material where sn=?";
		myQuery=mySession.createQuery(deleteSql);
		myQuery.setInteger(0, materialId);
		myQuery.executeUpdate();
		mySession.beginTransaction().commit();
		return 0;
	}

	@Override
	public List<Material> getMaterialList() {
		// TODO Auto-generated method stub
		String sqlStatement="from Material";
		myQuery=mySession.createQuery(sqlStatement);
		List<Material> myMaterialList=myQuery.list();
		return myMaterialList;
	}

}
