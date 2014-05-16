package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Piffrt;
/*
 * author chuan
 * 费率表增增删改查接口
 */
public interface IPiffrtService {

	   public Piffrt selectFeeRateByID(String id);
	   
	   public List<Piffrt> findAll();
	   
	   public void deleteFeeRate(String id);
	   
	   public void addFeeRate(Piffrt pf);
	   
	   
}
