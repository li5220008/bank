package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Pifprd;


/**
 * 交易码表业务接口
 * @author 唐世朋
 *
 */
public interface IPifprdService {
      
	 public List<Pifprd> findAll();
	 
	 public boolean realDeleteById(String id);
	 
	 public Pifprd selectByID(String id);
	 
	 public boolean update(Pifprd pifprd);
	 
	 public boolean add(Pifprd pifprd);
}
