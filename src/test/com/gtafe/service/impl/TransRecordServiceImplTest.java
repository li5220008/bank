package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.gtafe.model.TransactionRecord;
import com.gtafe.service.BaseTest;
import com.gtafe.service.ITransactionRecordService;

public class TransRecordServiceImplTest extends BaseTest {
  
	@Autowired
	ITransactionRecordService trs;
	@Test
	public void testFindAll(){
		List<TransactionRecord> list = trs.fetchAll();
		for(TransactionRecord h:list){
			System.out.println(h.getOpe_code());
		}
	} 
	@Test
	public void testAdd(){
		TransactionRecord ho  = new TransactionRecord();
		ho.setComment("you are sb");
		trs.add(ho);
	} 
	
	@Test
	public void testFindById(){
		TransactionRecord h = trs.selectById(2);
		System.out.println(h.getOpe_code());
	}
	
	@Test
	public void testUpdate(){
		TransactionRecord h = trs.selectById(2);
		h.setComment("not sb");
		trs.update(h);
	}
}
