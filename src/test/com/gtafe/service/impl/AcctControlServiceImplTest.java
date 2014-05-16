package com.gtafe.service.impl;


import java.util.List;

import org.junit.Test;

import com.gtafe.model.AcctControl;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IAcctControlService;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Desc: 
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月14日
 * Time: 下午6:39:46
 */
public class AcctControlServiceImplTest extends BaseTest {
	
	@Autowired
	private IAcctControlService service;

    @Test
    public void testSelectById() {
        AcctControl acctControl = service.selectById(1);
        System.out.println(acctControl);
    }

	@Test
	public void testFetchAll() {
		List<AcctControl> fetchAll = service.fetchAll();
		System.out.println(fetchAll);
	}

    @Test
    public void testAdd() {
        AcctControl acctControl = new AcctControl();
        acctControl.setOpeCode("k");
        acctControl.setSubjectCode("abc");
        acctControl.setOrgCode("abc");
        acctControl.setOrderCode("b");
        acctControl.setAccountName("d");
        acctControl.setCountCode("d");
        acctControl.setRecSts("P");

        service.add(acctControl);
    }

	@Test
	public void testUpdate() {
        AcctControl acctControl = new AcctControl();
        acctControl.setId(1);
        acctControl.setOpeCode("v");
        acctControl.setSubjectCode("abc");
        acctControl.setOrgCode("abc");
        acctControl.setOrderCode("b");
        acctControl.setAccountName("d");
        acctControl.setCountCode("d");
        acctControl.setRecSts("P");

        service.update(acctControl);
	}

	@Test
	public void testSoftDeleteById() {
	}

}
