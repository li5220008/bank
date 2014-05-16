package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Piftrx;


/**
 * 交易码表业务接口
 * @author 唐世朋
 *
 */
public interface IPiftrxService {
      
	 public List<Piftrx> findAll();
	 
	 public boolean realDeleteById(String id);
	 
	 public Piftrx selectByID(String id);
	 
	 public boolean update(Piftrx piftrx);
	 
	 public boolean add(Piftrx piftrx);
}
