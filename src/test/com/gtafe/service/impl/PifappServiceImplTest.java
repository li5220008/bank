package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.IPifappDao;
import com.gtafe.model.Pifapp;
import com.gtafe.service.BaseTest;

/**
 * 应用码表测试
 * @author 唐世朋
 *
 */
public class PifappServiceImplTest extends BaseTest {
    
	@Autowired
	IPifappDao pifappMapper;
	

	
	/**
	 * 添加
	 */
	@Test
	public void add(){
		Pifapp pifapp=new Pifapp();
		pifapp.setApp_cde("01");
		pifapp.setApp_nam("测试");
		pifappMapper.add(pifapp);
	}
	
	/**
	 * 查询全部
	 */
	@Test
	public void findAll(){
		List<Pifapp> pifappList = pifappMapper.findAll();		
		for (Pifapp pifapp : pifappList) {
			System.out.println("应用码:"+pifapp.getApp_cde()+"描述:"+pifapp.getApp_nam());
		}
		
	}
	/**
	 * 更新
	 */
	@Test
	public void update(){
		Pifapp pifapp=new Pifapp();
		pifapp.setApp_cde("01");
		pifapp.setApp_nam("zhengsi");
		pifappMapper.update(pifapp);
		
	}
	
	/**
	 * 删除
	 */
	@Test
	public void delete(){
		pifappMapper.realDeleteById("01");
	}
	
	/**
	 * 查找
	 */
	@Test
	public void selectByID(){
	  System.out.println(pifappMapper.selectByID("02").getApp_nam());
		
	}
}
