package com.gtafe.service.impl;


import com.gtafe.model.AcctControl;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IAcctControlService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

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
        acctControl.setOpe_code("k");
        acctControl.setSubject_code("abc");
        acctControl.setOrg_code("abc");
        acctControl.setOrder_code("b");
        acctControl.setAccount_limit("d");
        acctControl.setCount_code("d");
        acctControl.setRec_sts("P");

        service.add(acctControl);
    }

	@Test
	public void testUpdate() {
        AcctControl acctControl = new AcctControl();
        acctControl.setId(1);
        acctControl.setOpe_code("k");
        acctControl.setSubject_code("abc");
        acctControl.setOrg_code("abc");
        acctControl.setOrder_code("b");
        acctControl.setAccount_limit("d");
        acctControl.setCount_code("d");
        acctControl.setRec_sts("P");

        service.update(acctControl);
	}

	@Test
	public void testSoftDeleteById() {
	}

}
