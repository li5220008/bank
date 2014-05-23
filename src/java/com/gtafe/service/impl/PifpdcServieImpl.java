package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.IPifpdcDao;
import com.gtafe.model.Pifpdc;
import com.gtafe.service.IPifpdcService;


@Service
public class PifpdcServieImpl implements IPifpdcService{
	@Autowired
    IPifpdcDao PifpdcDao;
		
	public Pifpdc selectByID(String id) {		
		return PifpdcDao.selectByID(id);
	}

	public List<Pifpdc> findAll() {
		return PifpdcDao.findAll();
	}

	public boolean add(Pifpdc t) {
		try {
			PifpdcDao.add(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	public boolean update(Pifpdc t) {
		try {
			PifpdcDao.update(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}


	public boolean realDeleteById(String id) {
		try {
			PifpdcDao.realDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean softDeleteById(String id) {
		try {
			PifpdcDao.softDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
