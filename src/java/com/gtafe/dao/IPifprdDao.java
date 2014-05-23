package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.Pifprd;

/**
 * 产品定义表接口
 * @author wanli
 *
 */
public interface IPifprdDao {
    

	/**
	 * 获得全部信息
	 * @return
	 */
	public List<Pifprd> findAll();
		
	/**
	 * 真删除
	 * @param id
	 */
	public void realDeleteById(String id);
	
	/**
	 * 伪删除
	 * @param id
	 */
	public void softDeleteById(String id);
	
	/**
	 * 根据ID获得需要的对象
	 * @return
	 */
	public Pifprd selectByID(String id);
	
	/**
	 * 修改对象
	 * @param Pifprd
	 */
	public void update(Pifprd pifprd);
	
	/**
	 * 添加对象
	 * @param pifap
	 */
	public void add(Pifprd pifprd);
}
