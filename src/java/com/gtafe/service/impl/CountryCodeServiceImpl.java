package com.gtafe.service.impl;

import com.gtafe.dao.ICountryCodeDao;
import com.gtafe.model.CountryCode;
import com.gtafe.service.ICountryCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryCodeServiceImpl implements ICountryCodeService {
	@Autowired
	private ICountryCodeDao dao;
	public CountryCode selectById(Object id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	} 

	public List<CountryCode> fetchAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	public void add(CountryCode e) {
		// TODO Auto-generated method stub
		dao.add(e);
	}

	public void update(CountryCode e) {
		// TODO Auto-generated method stub
		dao.update(e);
	}

	public void softDeleteById(Object id) {
		// TODO Auto-generated method stub
		dao.softDeleteById(id);
	}
	
}
