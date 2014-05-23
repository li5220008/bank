package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.model.FeeRate;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IFeeRateService;

public class FeeRateServiceImplTest extends BaseTest {

	
	@Autowired
	private IFeeRateService irs;

	@Test
	public void testAdd() throws Exception {
		FeeRate er = new FeeRate();
		er.setFRT_KEY("2");
		er.setCMT_FLG("eee");
		er.setCMT_FLG("ef");
		irs.addFeeRate(er);
		
	}

	@Test
	public void testUpdate(){
		FeeRate er = irs.selectFeeRateByID("3");
		er.setCOM_FEE("2222.22222");
		irs.update(er);
	}
	@Test
	public void testFindAll(){
		List<FeeRate> list = irs.findAll();
		for(FeeRate f:list){
			System.out.println(f.getCMT_FLG());
		}
	}
	
}
