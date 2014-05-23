package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.model.AccrueSource;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IAccrueSourceService;
import com.gtafe.util.MathUtil;

public class AccrueSourceServiceImplTest extends BaseTest{
     @Autowired
	private IAccrueSourceService asm;
     
     @Test
     public void testFindall(){
    	List<AccrueSource> as = asm.fetchAll();
    	for(AccrueSource a:as){
    		System.out.println(a.getOpe_code());
    	}
     }
     
     @Test
     public void testAdd(){
    	 AccrueSource as = new AccrueSource();
    	// as.setId(MathUtil.StringToBigDecimal("3"));
    	 as.setAcc_name("ff");
    	 as.setAcc_date("2013-12-22");
    	 asm.add(as);
    	
     }
     @Test
     public void testUpdate(){
    	 AccrueSource as = asm.selectById(MathUtil.getBigDecimal(7));
    	 as.setAcc_name("cado");
    	 as.setBak_account("cdao");
    	 asm.update(as);
     }
     @Test
     public void testFindById(){
    	
    	AccrueSource as = asm.selectById(MathUtil.getBigDecimal(7));
    	 System.out.println(as.getAcc_name());
     }
     
     @Test
     public void testDelete(){
    	 asm.softDeleteById("5");
     }
}
