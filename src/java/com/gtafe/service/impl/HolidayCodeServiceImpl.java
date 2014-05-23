package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gtafe.dao.IHolidayCodeDao;
import com.gtafe.model.HolidayCode;
import com.gtafe.service.IHolidayCodeService;
@Service
public class HolidayCodeServiceImpl implements IHolidayCodeService{
   @Autowired
	private IHolidayCodeDao hc;

public HolidayCode selectById(Object id) {
	// TODO Auto-generated method stub
	return hc.selectById((String) id);
}

public List<HolidayCode> fetchAll() {
	// TODO Auto-generated method stub
	return hc.findAll();
}

public void add(HolidayCode e) {
	hc.add(e);
	
}

public void update(HolidayCode e) {
	hc.update(e);
}

public void softDeleteById(Object id) {
	hc.softDeleteById((String) id);
	
}
   
}
