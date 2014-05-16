package com.gtafe.service;

import java.util.List;

import com.gtafe.model.ExchangeRate;
/*
 * author yangchuan
 * 汇率表增删改查接口
 */
public interface IExchangeRateService {
	public ExchangeRate selectByID(String XRT_KEY);

	public List<ExchangeRate> findAll();

	public void addExchangeRate(ExchangeRate er);
	
	public void deleteExchangeRate(String XRT_key);
	
	public void updateExchangeRate(ExchangeRate er);
}
