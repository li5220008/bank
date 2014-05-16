package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.IPiftrxDao;
import com.gtafe.model.Piftrx;
import com.gtafe.service.BaseTest;

/**
 * 交易码表测试
 * @author 唐世朋
 *
 */
public class PiftrxServiceImplTest extends BaseTest {
    
	@Autowired
	IPiftrxDao piftrxMapper;
	
	
	/**
	 * 添加
	 */
	@Test
	public void add(){
		Piftrx piftrx=new Piftrx();
		piftrx.setUpt_tlr("wanli");
		piftrx.setTrx_cde("01");
		piftrx.setApp_cde("01");
		piftrx.setAct_cha('1');
		piftrxMapper.add(piftrx);
	}
	
	/**
	 * 查询全部
	 */
	@Test
	public void findAll(){
		List<Piftrx> piftrxList = piftrxMapper.findAll();		
		for (Piftrx piftrx : piftrxList) {
			System.out.println("应用码:"+piftrx.getApp_cde());
		}
		
	}
	/**
	 * 更新
	 */
	@Test
	public void update(){
		Piftrx piftrx=new Piftrx();
		piftrx.setUpt_tlr("guili");
		piftrx.setTrx_cde("01");
		piftrx.setApp_cde("01");
		piftrx.setAct_cha('1');
		piftrxMapper.update(piftrx);
	}
	
	/**
	 * 删除
	 */
	@Test
	public void delete(){
		piftrxMapper.realDeleteById("01");
	}
	
	/**
	 * 查找
	 */
	@Test
	public void selectByID(){
	  System.out.println(piftrxMapper.selectByID("01").getApp_cde());
		
	}
}
