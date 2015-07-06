package com.hyd.northpj.service.impl;

import java.util.List;

import com.hyd.northpj.dao.impl.MaterialDao;
import com.hyd.northpj.entity.Material;
import com.hyd.northpj.entity.User;
import com.hyd.northpj.service.interfaces.MaterialServiceInterface;
import com.hyd.northpj.util.CommonUtil;
import com.hyd.northpj.util.ValidateUtil;

public class MaterialService implements MaterialServiceInterface {

	private MaterialDao myMaterialDao=new MaterialDao();
	
	@Override
	public int addMaterial(Material materialInfo) throws Exception {
		// TODO Auto-generated method stub
		
		//对materialInfo进行校验
		if(ValidateUtil.validateMaterialAllProperty(materialInfo)!=0){
			return 1;
		};
		return myMaterialDao.addNewMaterial(materialInfo)==0?0:2;
	}

	@Override
	public int deleteMaterial(int materialId) throws Exception {
		// TODO Auto-generated method stub

		return 0;
	}

	@Override
	public List<Material> getMaterialList() throws Exception {
		// TODO Auto-generated method stub
	
		return null;
	}

}
