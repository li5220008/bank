package com.gtafe.service;

import java.util.List;

import com.gtafe.model.Pifapp;


/**
 * 应用码表业务接口
 * @author 唐世朋
 *
 */
public interface IPifappService {
      
	 public List<Pifapp> findAll();
	 
	 public boolean realDeleteById(String id);
	 
	 public Pifapp selectByID(String id);
	 
	 public boolean update(Pifapp pifapp);
	 
	 public boolean add(Pifapp pifap);
}
