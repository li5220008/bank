package com.gtafe.service.impl;

import static org.junit.Assert.*;

import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.model.PublicCode;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IPublicCodeService;

/**
 * Desc: 
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月15日
 * Time: 下午6:07:08
 */
public class PublicCodeServiceImplTest extends BaseTest {
	
	@Autowired
	private IPublicCodeService service;
	@Test
	public void testSelectById() {
		service.selectById(1);
	}

	@Test
	public void testFetchAll() {
		List<PublicCode> fetchAll = service.fetchAll();
		System.out.println(fetchAll);
	}

	@Test
	public void testAdd() {
		PublicCode pc = new PublicCode();
		pc.setPublicCode("abcdd");
		pc.setPublicType("a");
		pc.setLastTime(new Date());
		pc.setPublicName("a");
		service.add(pc);
	}

	@Test
	public void testUpdate() {
		PublicCode pc = new PublicCode();
		pc.setId(1);
		pc.setPublicCode("abcdeee");
		pc.setPublicType("a");
		pc.setLastTime(new Date());
		pc.setPublicName("a");
		service.update(pc);
	}

	@Test
	public void testSoftDeleteById() {
		service.softDeleteById(1);
	}

}
