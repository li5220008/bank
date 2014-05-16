package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.Pifapp;
import com.gtafe.model.PriceCertificate;

/**
 * 应用码表接口
 * @author 唐世朋
 *
 */
public interface IPifappDao {
    

	/**
	 * 获得全部信息
	 * @return
	 */
	public List<Pifapp> findAll();
		
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
	public Pifapp selectByID(String id);
	
	/**
	 * 修改对象
	 * @param pifapp
	 */
	public void update(Pifapp pifapp);
	
	/**
	 * 添加对象
	 * @param pifap
	 */
	public void add(Pifapp pifapp);
}
