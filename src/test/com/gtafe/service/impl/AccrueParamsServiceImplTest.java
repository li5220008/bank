package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.gtafe.model.AccrueParams;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IAccrueParamsService;
public class AccrueParamsServiceImplTest extends BaseTest {
	@Autowired
	IAccrueParamsService apm;

	@Test
	public void testFindAll(){
		List<AccrueParams> ap = apm.fetchAll();
		for(AccrueParams a:ap){
			System.out.println(a.getOpe_code());
		}
	}
	
	@Test
	public void testAdd(){
		AccrueParams aps = new AccrueParams();
		aps.setAcc_name("ef");
		aps.setBak_account("fe");
		apm.add(aps);
	}
	
	@Test 
	public void testupdate(){
		AccrueParams ap =  apm.selectById(9);
		ap.setAcc_name("chens");
		apm.update(ap);
	}
}
