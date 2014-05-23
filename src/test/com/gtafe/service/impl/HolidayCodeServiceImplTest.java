package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.gtafe.model.HolidayCode;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IHolidayCodeService;
import com.gtafe.util.MathUtil;

public class HolidayCodeServiceImplTest extends BaseTest{

	@Autowired
	private IHolidayCodeService ic;
	@Test
	public void testFindAll(){
		List<HolidayCode> list = ic.fetchAll();
		for(HolidayCode h:list){
			System.out.println(h.getHoliday_code());
		}
	} 
	@Test
	public void testAdd(){
		HolidayCode ho  = new HolidayCode();
		ho.setHoliday_code("ee");
		ho.setHoliday_name("big");
		ho.setUPT_TLR("e");
		ic.add(ho);
	} 
	
	@Test
	public void testFindById(){
		HolidayCode h = ic.selectById("1");
		System.out.println(h.getHoliday_code());
	}
	
	@Test
	public void testUpdate(){
		HolidayCode h = ic.selectById(MathUtil.getBigDecimal(1));
		h.setHoliday_code("4chehuiq");
		ic.update(h);
	}
}
