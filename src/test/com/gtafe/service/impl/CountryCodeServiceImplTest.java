package com.gtafe.service.impl;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.directwebremoting.export.Data;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.model.CountryCode;
import com.gtafe.service.BaseTest;
import com.gtafe.service.ICountryCodeService;

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
		cc.setCountryCode("aa");
		cc.setAllowFlag("a");
		cc.setCurrency("a");
		cc.setLastTime(new Date());
		cc.setStartTime(new Date());
		service.add(cc);
	}

	@Test
	public void testUpdate() {
		CountryCode cc = new CountryCode();
	    cc.setId(1);
		cc.setCountryCode("004");
		cc.setAllowFlag("a");
		cc.setCurrency("a");
		cc.setLastTime(new Date());
		cc.setStartTime(new Date());
		service.update(cc);
	}

	@Test
	public void testSoftDeleteById() {
		service.softDeleteById(1);
	}

}
