package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.dao.IAcctControlDao;
import com.gtafe.model.AcctControl;
import com.gtafe.service.IAcctControlService;
import org.springframework.stereotype.Service;

/**
 * Desc: 内部账户控制表 
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月14日
 * Time: 下午6:21:20
 */
@Service
public class AcctControlServiceImpl implements IAcctControlService {
	@Autowired
	private IAcctControlDao acctControlDao;
	
	
	public AcctControl selectById(Object id) {
		// TODO Auto-generated method stub
		return acctControlDao.selectById(id);
	}

	public List<AcctControl> fetchAll() {
		// TODO Auto-generated method stub
        List<AcctControl> all = acctControlDao.findAll();
        return all;
	}

	public void add(AcctControl e) {
		// TODO Auto-generated method stub
		e.setRec_sts("P");//默认值
		acctControlDao.add(e);
	}

	public void update(AcctControl e) {
		// TODO Auto-generated method stub
		acctControlDao.update(e);
	}

	public void softDeleteById(Object id) {
		// TODO Auto-generated method stub
		acctControlDao.softDeleteById(id);
	}
	
}
