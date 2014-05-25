package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.constants.PifitmSelect;
import com.gtafe.dao.IBankCarDao;
import com.gtafe.model.BankCar;
import com.gtafe.model.Pifitm;
import com.gtafe.service.BaseTest;

public class BankCarServieTest extends BaseTest {
	@Autowired
    IBankCarDao bankCarDao;
	
	
/*	    T selectByID(String id);
	    List<T> findAll();
	    boolean add(T t);
	    boolean update(T t);
	    boolean realDeleteById(String id);
	    boolean deleteById(String id);*/
	@Test
	public void realDeleteById(){      
			bankCarDao.realDeleteById(2);
	}

	@Test
	public void add() {
		    BankCar bc=new BankCar();
		    bc.setCar_name("农行卡");
		    bc.setAttached_code("1");
			bankCarDao.add(bc);	
	}
	@Test
	public void findAll() {
		long beginTime=0,endTime=0;  
		beginTime= System.currentTimeMillis();  
        System.out.println(beginTime+":OneByOne begin!");  
		List<BankCar> bankCarList=bankCarDao.findAll();
		endTime = System.currentTimeMillis();  
        System.out.println(endTime+":OneByOne end!costs "+(endTime-beginTime)+"ms."); 		
		System.out.println("数量是"+bankCarList.size());
		for (BankCar bc : bankCarList) {			
			System.out.println("卡名称"+bc.getCar_name());
		}
		
	/*	System.out.println("更新");
		int i=1;
		for (BankCar bc : bankCarList) {		
			bc.setCar_name("缓存测试"+(i++));
			bankCarDao.update(bc);
		}*/
		
		System.out.println("第二次查询");
		beginTime= System.currentTimeMillis();  
        System.out.println(beginTime+":OneByOne begin!");  
		bankCarList=bankCarDao.findAll();
		endTime = System.currentTimeMillis();  
        System.out.println(endTime+":OneByOne end!costs "+(endTime-beginTime)+"ms."); 		
		System.out.println("数量是"+bankCarList.size());
		for (BankCar bc : bankCarList) {			
			System.out.println("卡名称"+bc.getCar_name());
		}
	}

	@Test
	public void update() {
		BankCar bc =new BankCar();
	     bc.setId(1);
	     bc.setCar_name("建行卡");
		 bankCarDao.update(bc);
	}
	@Test
	public void selectByID(){
		BankCar bc =bankCarDao.selectByID(1);
	   System.out.println("卡名称为："+bc.getCar_name());
	}
}
