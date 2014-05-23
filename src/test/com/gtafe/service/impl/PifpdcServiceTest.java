package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.IPifpdcDao;
import com.gtafe.model.Pifpdc;
import com.gtafe.service.BaseTest;

/**
 * 产品码表服务层测试
 * @author li.wan
 *
 */
public class PifpdcServiceTest extends BaseTest {
	@Autowired
    IPifpdcDao PifpdcDao;

	@Test
	public void add() {
		    Pifpdc cr=new Pifpdc();
		    cr.setPrd_cde("04");
		    cr.setPrd_nam("坏产品eee");
			PifpdcDao.add(cr);	
	}
	
	
	@Test
	public void realDeleteById(){      
		PifpdcDao.realDeleteById("1");			
	}


	@Test
	public void findAll() {	
		List<Pifpdc> PifpdcList=PifpdcDao.findAll();
		System.out.println("数量是"+PifpdcList.size());
		for (Pifpdc bc : PifpdcList) {			
			System.out.println(bc.toString());
		}
	}

	@Test
	public void update() {
		Pifpdc cr =new Pifpdc();
		cr.setPrd_cde("01");
	    cr.setPrd_nam("垃圾产品");
		 PifpdcDao.update(cr);
	}
	@Test
	public void selectByID(){
		Pifpdc bc =PifpdcDao.selectByID("01");
		System.out.println(bc.toString());
	}
	/**
	 * 综合测试
	 */
	@Test
	public void totalTest(){
		    //新增
		    Pifpdc cr=new Pifpdc();
		    cr.setPrd_cde("02");
		    cr.setPrd_nam("好产品");
			PifpdcDao.add(cr);	
			//根据id查询
		    cr =PifpdcDao.selectByID("02");
		    cr.setPrd_nam("垃圾产品");
		    //更新
		    PifpdcDao.update(cr);
		   //根据id查询
		    cr =PifpdcDao.selectByID("02");
		    //删除
		    PifpdcDao.realDeleteById("02");
		    //查询所有
		    List<Pifpdc> PifpdcList=PifpdcDao.findAll();
			System.out.println("数量是"+PifpdcList.size());
			for (Pifpdc bc : PifpdcList) {			
				System.out.println(bc.toString());
			}
			
	}
	
	
}
