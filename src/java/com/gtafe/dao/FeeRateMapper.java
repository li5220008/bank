package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.FeeRate;
//费率映射接口
public interface FeeRateMapper extends IBaseDao<FeeRate> {
	
   public FeeRate selectFeeRateByID(String id);
   
   public List<FeeRate> findAll();
   
   public void deleteFeeRate(String id);
   
   public void addFeeRate(FeeRate pf);
}
