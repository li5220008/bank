package com.gtafe.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import org.directwebremoting.extend.Sleeper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.model.ExchangeReceipts;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IExchangeReceiptsService;

/**
 * Desc: 
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月15日
 * Time: 下午2:23:17
 */
public class ExchangeReceiptsServiceImplTest extends BaseTest {
	@Autowired
	private IExchangeReceiptsService service;
	
	@Test
	public void testSelectById() {
		ExchangeReceipts selectById = service.selectById(1);
		System.out.println(selectById);
	}

	@Test
	public void testFetchAll() {
		List<ExchangeReceipts> fetchAll = service.fetchAll();
		System.out.println(fetchAll);
	}

	@Test
	public void testAdd() {
		ExchangeReceipts er = new ExchangeReceipts();
		er.setExchangeType("a");
		er.setIconName("b");
		er.setIconSign("a");
		//er.setRate(32.0);
		er.setRateFlag("a");
		er.setDateFlag("d");
		service.add(er);
	}

	@Test
	public void testUpdate() {
		ExchangeReceipts er = new ExchangeReceipts();
		er.setId(1);
		er.setExchangeType("a");
		er.setIconName("b");
		er.setIconSign("a");
		er.setRate(32.4);
		er.setRateFlag("a");
		er.setDateFlag("d");
		service.update(er);
	}

	@Test
	public void testSoftDeleteById() {
		service.softDeleteById(3);
	}

}
