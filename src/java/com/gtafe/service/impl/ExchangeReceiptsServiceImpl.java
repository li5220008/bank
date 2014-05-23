package com.gtafe.service.impl;

import com.gtafe.dao.IExchangeReceiptsDao;
import com.gtafe.model.ExchangeReceipts;
import com.gtafe.service.IExchangeReceiptsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc: 结售汇牌价表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月15日
 * Time: 下午2:18:22
 */
@Service
public class ExchangeReceiptsServiceImpl implements IExchangeReceiptsService {
	@Autowired
	private IExchangeReceiptsDao dao;
	
	public ExchangeReceipts selectById(Object id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<ExchangeReceipts> fetchAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	public void add(ExchangeReceipts e) {
		// TODO Auto-generated method stub
		dao.add(e);
	}

	public void update(ExchangeReceipts e) {
		// TODO Auto-generated method stub
		dao.update(e);
	}

	public void softDeleteById(Object id) {
		// TODO Auto-generated method stub
		dao.softDeleteById(id);
	}
	
}
