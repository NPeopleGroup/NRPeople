package com.hyd.northpj.dao.interfaces;

import java.util.List;

import com.hyd.northpj.entity.Material;

public interface MaterialDaoInterface {

	/**
	 * 新增材料信息
	 * @param materialInfo
	 * @return 成功返回0，否则返回1
	 * @throws Exception
	 */
	public int addNewMaterial(Material materialInfo) throws Exception;
	
	/**
	 * 删除已有材料信息
	 * @param materialName
	 * @return 成功返回0，否则返回1
	 * @throws Exception
	 */
	public int deleteMaterial(int materialId) throws Exception;
	
	/**
	 * 获取材料列表
	 * @return
	 */
	public List<Material> getMaterialList();
}
