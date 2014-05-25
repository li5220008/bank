package com.gtafe.service.impl;

import com.gtafe.dao.IAcctOpenDao;
import com.gtafe.model.AcctOpen;
import com.gtafe.service.IAcctOpenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc: 内部账户开户表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月15日
 * Time: 上午11:38:25
 */
@Service
public class AcctOpenServiceImpl implements IAcctOpenService {
	
	@Autowired
	private IAcctOpenDao dao;
	
	public AcctOpen selectById(Object id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<AcctOpen> fetchAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	public void add(AcctOpen e) {
		// TODO Auto-generated method stub
		dao.add(e);
	}

	public void update(AcctOpen e) {
		// TODO Auto-generated method stub
		dao.update(e);
	}

	public void deleteById(Object id) {
		// TODO Auto-generated method stub
		dao.softDeleteById(id);
	}
	
}
