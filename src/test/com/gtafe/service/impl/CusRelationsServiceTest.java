package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.ICusRelationsDao;
import com.gtafe.model.CusRelations;
import com.gtafe.service.BaseTest;

public class CusRelationsServiceTest extends BaseTest {
	@Autowired
    ICusRelationsDao cusRelationsDao;
	
	
/*	    T selectByID(String id);
	    List<T> findAll();
	    boolean add(T t);
	    boolean update(T t);
	    boolean realDeleteById(String id);
	    boolean softDeleteById(String id);*/
	
	@Test
	public void add() {
		    CusRelations cr=new CusRelations();
            cr.setCus_name("刘德华");
			cusRelationsDao.add(cr);	
	}
	
	
	@Test
	public void realDeleteById(){      
			cusRelationsDao.realDeleteById(1);
	}


	@Test
	public void findAll() {	
		List<CusRelations> cusRelationsList=cusRelationsDao.findAll();
		System.out.println("数量是"+cusRelationsList.size());
		for (CusRelations bc : cusRelationsList) {			
			System.out.println("客户名称是"+bc.getCus_name());
		}
	}

	@Test
	public void update() {
		CusRelations cr =new CusRelations();
	    cr.setId(1);
	    cr.setCus_name("黎明");
		 cusRelationsDao.update(cr);
	}
	@Test
	public void selectByID(){
		CusRelations bc =cusRelationsDao.selectByID(1);
	   System.out.println("客户名称为："+bc.getCus_name());
	}
}
