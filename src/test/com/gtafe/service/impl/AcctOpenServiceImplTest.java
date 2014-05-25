package com.gtafe.service.impl;

import com.gtafe.model.AcctOpen;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IAcctOpenService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

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
		open.setOpe_code("y");
		open.setAccount("adb");
		open.setSubject_code("a");
		open.setOrder_code("d");
		open.setAccount_name("c");
		open.setClose_limit("k");
		open.setIcon_limit("b");
		service.add(open);
	}

	@Test
	public void testUpdate() {
		AcctOpen open = new AcctOpen();
		open.setId(1);
		open.setOpe_code("z");
		open.setAccount("adb");
		open.setSubject_code("a");
		open.setOrder_code("d");
		open.setAccount_name("c");
		open.setClose_limit("k");
		open.setIcon_limit("b");
		service.update(open);
	}

	@Test
	public void testSoftDeleteById() {
		service.deleteById(1);
	}

}
