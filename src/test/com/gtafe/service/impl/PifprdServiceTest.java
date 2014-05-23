package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.IPifprdDao;
import com.gtafe.model.Pifprd;
import com.gtafe.service.BaseTest;

/**
 * 产品应用表服务层测试
 * @author li.wan
 *
 */
public class PifprdServiceTest extends BaseTest {
	@Autowired
    IPifprdDao PifprdDao;
	
	@Test
	public void add() {
		    Pifprd cr=new Pifprd();
		    cr.setPrd_sal("01");//主键
		    cr.setPrd_ttl("产品定义");;//产品对外标题
			PifprdDao.add(cr);	
	}
	
	
	@Test
	public void realDeleteById(){      
			PifprdDao.realDeleteById("01");
	}


	@Test
	public void findAll() {	
		List<Pifprd> PifprdList=PifprdDao.findAll();
		System.out.println("数量是"+PifprdList.size());
		for (Pifprd bc : PifprdList) {			
			System.out.println(bc.toString());
		}
	}
	@Test
	public void update() {
		Pifprd cr =new Pifprd();
		cr.setPrd_sal("01");//主键
	    cr.setPrd_ttl("产品定义改");;//产品对外标题
		PifprdDao.update(cr);
	}
	@Test
	public void selectByID(){
		Pifprd bc =PifprdDao.selectByID("01");
		System.out.println(bc.toString());
	}
	
	
}
