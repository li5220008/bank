package com.gtafe.service.impl;

import com.gtafe.model.CountryCode;
import com.gtafe.service.BaseTest;
import com.gtafe.service.ICountryCodeService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;

/**
 * Desc: 
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月15日
 * Time: 下午6:06:18
 */
public class CountryCodeServiceImplTest extends BaseTest {

	@Autowired
	private ICountryCodeService service;
	@Test
	public void testSelectById() {
		service.selectById(1);
	}

	@Test
	public void testFetchAll() {
		List<CountryCode> fetchAll = service.fetchAll();
		System.out.println(fetchAll);
	}

	@Test
	public void testAdd() {
		CountryCode cc = new CountryCode();
		cc.setCountry_code("aa");
		cc.setAllow_flag("a");
		cc.setCurrency("a");
		cc.setLast_time(new Date());
		cc.setStart_time(new Date());
		service.add(cc);
	}

	@Test
	public void testUpdate() {
		CountryCode cc = new CountryCode();
	    cc.setId(1);
		cc.setCountry_code("004");
		cc.setAllow_flag("a");
		cc.setCurrency("a");
		cc.setLast_time(new Date());
		cc.setStart_time(new Date());
		service.update(cc);
	}

	@Test
	public void testSoftDeleteById() {
		service.deleteById(1);
	}

}
