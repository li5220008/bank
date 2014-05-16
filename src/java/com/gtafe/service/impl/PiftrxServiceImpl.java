package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.IPiftrxDao;
import com.gtafe.model.Piftrx;
import com.gtafe.service.IPiftrxService;

@Service
public class PiftrxServiceImpl implements IPiftrxService {
     
	@Autowired
	private IPiftrxDao piftrxMapper;

	public List<Piftrx> findAll() {
		
		return piftrxMapper.findAll();
	}

	public boolean realDeleteById(String id) {		
		try {
			piftrxMapper.realDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public Piftrx selectByID(String id) {
		
		return piftrxMapper.selectByID(id);
	}

	public boolean update(Piftrx piftrx) {
		try {
			piftrxMapper.update(piftrx);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean add(Piftrx piftrx) {
		try {
			piftrxMapper.add(piftrx);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}


	
}
