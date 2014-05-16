package com.gtafe.dao;


import java.util.List;

import com.gtafe.model.ExchangeRate;

public interface ExchangeRateMapper {
    public ExchangeRate selectByID(String XRT_KEY);
    public List<ExchangeRate> findAll();
    public void addExchangeRate(ExchangeRate er);
    public void deleteExchangeRate(String id);
    public void updateExchangeRate(ExchangeRate er);
    
}
