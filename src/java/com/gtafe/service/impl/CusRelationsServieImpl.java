package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.ICusRelationsDao;
import com.gtafe.model.CusRelations;
import com.gtafe.service.ICusRelationsService;


@Service
public class CusRelationsServieImpl implements ICusRelationsService{
	@Autowired
    ICusRelationsDao CusRelationsDao;
		
	public CusRelations selectByID(int id) {		
		return CusRelationsDao.selectByID(id);
	}

	public List<CusRelations> findAll() {
		return CusRelationsDao.findAll();
	}

	public boolean add(CusRelations t) {
		try {
			CusRelationsDao.add(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	public boolean update(CusRelations t) {
		try {
			CusRelationsDao.update(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}


	public boolean realDeleteById(int id) {
		try {
			CusRelationsDao.realDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean softDeleteById(int id) {
		try {
			CusRelationsDao.softDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
