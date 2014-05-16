package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.IPifappDao;
import com.gtafe.model.Pifapp;
import com.gtafe.service.IPifappService;

@Service
public class PifappServiceImpl implements IPifappService {
      
	@Autowired
     private IPifappDao pifappMapper;
	
	public List<Pifapp> findAll() {
		return pifappMapper.findAll();
	}
	
	public Pifapp selectByID(String id) {
		return pifappMapper.selectByID(id);
	}
	
	public boolean update(Pifapp pifapp) {
		try {
			pifappMapper.update(pifapp);
		} catch (Exception e) {
			// TODO: handle exception
			return false;
		}
		return true;
	}
	
	public boolean add(Pifapp pifapp) {
		try {
			pifappMapper.add(pifapp);
		} catch (Exception e) {
			return false;
		}
		return true;
	}

	public boolean realDeleteById(String id) {
		boolean result=true;
		try {
			pifappMapper.realDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			result=false;
		}
		return result;
	}

}
