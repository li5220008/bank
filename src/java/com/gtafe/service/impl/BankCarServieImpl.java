package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.IBankCarDao;
import com.gtafe.model.BankCar;
import com.gtafe.service.IBankCarService;


@Service
public class BankCarServieImpl implements IBankCarService{
	@Autowired
    IBankCarDao bankCarDao;
	
	
	
	public BankCar selectByID(int id) {		
		return bankCarDao.selectByID(id);
	}

	public List<BankCar> findAll() {
		return bankCarDao.findAll();
	}

	public boolean add(BankCar t) {
		try {
			bankCarDao.add(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	public boolean update(BankCar t) {
		try {
			bankCarDao.update(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}


	public boolean realDeleteById(int id) {
		try {
			bankCarDao.realDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean softDeleteById(int id) {
		try {
			bankCarDao.softDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
