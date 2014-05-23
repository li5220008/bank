package com.gtafe.dao;


import java.math.BigDecimal;
import java.util.List;

import com.gtafe.model.AccrueParams;

public interface AccrueParamsMapper {
	public AccrueParams selectById(BigDecimal bd);
	
	public void delete(BigDecimal id);
	
	public void add(AccrueParams ap);
	
	public void update(AccrueParams ap);
	
	public List<AccrueParams> fetchAll();
}
