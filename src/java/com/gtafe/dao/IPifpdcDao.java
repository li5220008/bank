package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.Pifpdc;
import com.gtafe.model.PriceCertificate;

/**
 * 产品码表接口
 * @author wanli
 *
 */
public interface IPifpdcDao {
    

	/**
	 * 获得全部信息
	 * @return
	 */
	public List<Pifpdc> findAll();
		
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
	public Pifpdc selectByID(String id);
	
	/**
	 * 修改对象
	 * @param Pifpdc
	 */
	public void update(Pifpdc pifpdc);
	
	/**
	 * 添加对象
	 * @param pifap
	 */
	public void add(Pifpdc pifpdc);
}
