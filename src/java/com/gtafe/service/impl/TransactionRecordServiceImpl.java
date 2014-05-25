package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.ITransactionRecordDao;
import com.gtafe.model.TransactionRecord;
import com.gtafe.service.ITransactionRecordService;
import com.gtafe.util.MathUtil;
@Service
public class TransactionRecordServiceImpl implements ITransactionRecordService {
   @Autowired
   ITransactionRecordDao trs;
	public TransactionRecord selectById(Object id) {
		// TODO Auto-generated method stub
		return trs.selectById(MathUtil.getBigDecimal(id));
	}

	public List<TransactionRecord> fetchAll() {
		// TODO Auto-generated method stub
		return trs.findAll();
	}

	public void add(TransactionRecord e) {
		// TODO Auto-generated method stub
		trs.add(e);
	}

	public void update(TransactionRecord e) {
		trs.update(e);
	}

	public void deleteById(Object id) {
		trs.softDeleteById(MathUtil.getBigDecimal(id));
	}

}
