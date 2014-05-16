package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.ExchangeRateMapper;
import com.gtafe.model.ExchangeRate;
import com.gtafe.service.BaseTest;

public class ExchangeRateServiceImplTest extends BaseTest {
	@Autowired
	private ExchangeRateMapper mapper;

	@Test
	public void testAdd() throws Exception {
		ExchangeRate er = new ExchangeRate();
		er.setXRT_KEY("1");
		er.setCRE_DAT("2013-10-22");
		er.setRAT_FLG("f");
		er.setRAT_VAL(2.0000);
		mapper.addExchangeRate(er);
	}

	
	@Test
	public void testEdite() throws Exception {
		ExchangeRate er = mapper.selectByID("1");
		
		er.setCUR_FLG("ff");
		er.setRAT_FLG("fz");
		er.setRAT_VAL(2.00040);
		mapper.updateExchangeRate(er);
	}
	@Test
	public void testFindAll() throws Exception {
		List<ExchangeRate> l = mapper.findAll();
		for (ExchangeRate r : l) {
			System.out.println(r.getCRE_TIM());
		}
	}

	@Test
	public void testDelete() throws Exception {
		mapper.deleteExchangeRate("5");
	}
    
	@Test
	public void testFindEx() throws Exception {
		ExchangeRate ex = mapper.selectByID("1");
		System.out.println(ex.getRAT_VAL());
	}
	public ExchangeRateMapper getMapper() {
		return mapper;
	}

	public void setMapper(ExchangeRateMapper mapper) {
		this.mapper = mapper;
	}
}
