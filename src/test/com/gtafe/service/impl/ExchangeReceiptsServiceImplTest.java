package com.gtafe.service.impl;

import com.gtafe.model.ExchangeReceipts;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IExchangeReceiptsService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

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
		er.setExchange_type("a");
		er.setIcon_name("b");
		er.setIcon_sign("a");
		//er.setRate(32.0);
		er.setRate_flag("a");
		er.setDate_flag("d");
		service.add(er);
	}

	@Test
	public void testUpdate() {
		ExchangeReceipts er = new ExchangeReceipts();
		er.setId(1);
		er.setExchange_type("a");
		er.setIcon_name("b");
		er.setIcon_sign("a");
		er.setRate(32.4);
		er.setRate_flag("a");
		er.setDate_flag("d");
		service.update(er);
	}

	@Test
	public void testSoftDeleteById() {
		service.softDeleteById(3);
	}

}
