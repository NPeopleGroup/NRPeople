package com.hyd.northpj.service.interfaces;

import java.util.List;

import com.hyd.northpj.entity.Material;

/**
 * @author Search
 *
 */
public interface MaterialServiceInterface {
	
	/**
	 * 新增加材料
	 * @return 成功返回0，否则返回非0
	 * @throws Exception
	 */
	public int addMaterial(Material materialInfo) throws Exception;
	
	
	/** 删除已有材料
	 * @param materialName
	 * @return 成功返回0，未通过校验返回1，插入失败返回2
	 * @throws Exception
	 */
	public int deleteMaterial(int materialId) throws Exception;
	
	/** 查询已有材料
	 * @return 材料列表
	 * @throws Exception
	 */
	public List<Material> getMaterialList() throws Exception;

}
