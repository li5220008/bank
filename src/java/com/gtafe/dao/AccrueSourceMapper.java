package com.gtafe.dao;

import java.math.BigDecimal;
import java.util.List;

import com.gtafe.model.AccrueSource;

/*
 * @author chuan
 * 计提来源 mapper
 */
public interface AccrueSourceMapper {
	public AccrueSource findById(BigDecimal bd);
     
	public void delete(BigDecimal id);
	
	public void add(AccrueSource as);
	
	public void update(AccrueSource as);
	
	public List<AccrueSource> fetchAll();
 
}
