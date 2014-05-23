package com.gtafe.dao;

import java.math.BigDecimal;
import java.util.List;
import com.gtafe.model.HolidayCode;

public interface IHolidayCodeDao {

	 public HolidayCode selectById(String id);  
	 public List<HolidayCode> findAll();
	 public void add(HolidayCode hc);
	 public void update(HolidayCode hc);
	 public void realDeleteById(String id);
	 public void softDeleteById(String id);
}
