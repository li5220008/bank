package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.Piftrx;

/**
 * 交易码表接口
 * @author 唐世朋
 *
 */
public interface IPiftrxDao {
    
	
	/**
	 * 获得全部信息
	 * @return
	 */
	public List<Piftrx> findAll();
	
	
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
	public Piftrx selectByID(String number);
	
	/**
	 * 修改对象
	 * @param pifapp
	 */
	public void update(Piftrx piftrx);
	
	/**
	 * 添加对象
	 * @param pifap
	 */
	public void add(Piftrx piftrx);
}
