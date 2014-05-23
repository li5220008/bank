package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Pifpdc;


/**
 * 交易码表业务接口
 * @author 唐世朋
 *
 */
public interface IPifpdcService {
      
	 public List<Pifpdc> findAll();
	 
	 public boolean realDeleteById(String id);
	 
	 public Pifpdc selectByID(String id);
	 
	 public boolean update(Pifpdc pifpdc);
	 
	 public boolean add(Pifpdc pifpdc);
}
