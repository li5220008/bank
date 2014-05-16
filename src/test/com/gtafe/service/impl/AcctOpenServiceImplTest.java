package com.gtafe.service.impl;

import static org.junit.Assert.*;

import java.util.List;

import com.gtafe.service.BaseTest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.model.AcctOpen;
import com.gtafe.service.IAcctOpenService;

/**
 * Desc: 
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月15日
 * Time: 上午11:48:21
 */
public class AcctOpenServiceImplTest extends BaseTest {

    @Autowired
	private IAcctOpenService service;
	
	@Test
	public void testSelectById() {
		AcctOpen selectById = service.selectById(1);
		System.out.println(selectById);
	}

	@Test
	public void testFetchAll() {
		List<AcctOpen> fetchAll = service.fetchAll();
		System.out.println(fetchAll);
	}

	@Test
	public void testAdd() {
		AcctOpen open = new AcctOpen();
		open.setOpeCode("y");
		open.setAccount("adb");
		open.setSubjectCode("a");
		open.setOrderCode("d");
		open.setAccountName("c");
		open.setCloseLimit("k");
		open.setIconLimit("b");
		service.add(open);
	}

	@Test
	public void testUpdate() {
		AcctOpen open = new AcctOpen();
		open.setId(1);
		open.setOpeCode("z");
		open.setAccount("adb");
		open.setSubjectCode("a");
		open.setOrderCode("d");
		open.setAccountName("c");
		open.setCloseLimit("k");
		open.setIconLimit("b");
		service.update(open);
	}

	@Test
	public void testSoftDeleteById() {
		service.softDeleteById(1);
	}

}
