package com.gtafe.service;

import java.util.List;

import com.gtafe.model.FeeRate;
/*
 * author chuan
 * 费率表增增删改查接口
 */
public interface IFeeRateService {

	   public FeeRate selectFeeRateByID(String id);
	   
	   public List<FeeRate> findAll();
	   
	   public void deleteFeeRate(String id);
	   
	   public void addFeeRate(FeeRate pf);
	   
	   public void update(FeeRate fr);
	   
	   
}
