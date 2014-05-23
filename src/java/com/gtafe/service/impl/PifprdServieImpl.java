package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.IPifprdDao;
import com.gtafe.model.Pifprd;
import com.gtafe.service.IPifprdService;


@Service
public class PifprdServieImpl implements IPifprdService{
	@Autowired
    IPifprdDao PifprdDao;
		
	public Pifprd selectByID(String id) {		
		return PifprdDao.selectByID(id);
	}

	public List<Pifprd> findAll() {
		return PifprdDao.findAll();
	}

	public boolean add(Pifprd t) {
		try {
			PifprdDao.add(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	public boolean update(Pifprd t) {
		try {
			PifprdDao.update(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}


	public boolean realDeleteById(String id) {
		try {
			PifprdDao.realDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean softDeleteById(String id) {
		try {
			PifprdDao.softDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
