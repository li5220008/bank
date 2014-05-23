package com.gtafe.service.impl;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.gtafe.model.StatisticsCode;
import com.gtafe.service.BaseTest;
import com.gtafe.service.IStatisticsCodeService;

public class StatisticsCodeServiceImplTest extends BaseTest {
  
	@Autowired
	IStatisticsCodeService ic;
	@Test
	public void testFindAll(){
		List<StatisticsCode> list = ic.fetchAll();
		for(StatisticsCode h:list){
			System.out.println(h.getANC_CDE());
		}
	} 
	@Test
	public void testAdd(){
		StatisticsCode ho  = new StatisticsCode();
		ho.setANC_CDE("fe");
		ic.add(ho);
	} 
	
	@Test
	public void testFindById(){
		StatisticsCode h = ic.selectById("fe");
		System.out.println(h.getANA_NUM());
	}
	
	@Test
	public void testUpdate(){
		StatisticsCode h = ic.selectById("fe");
		h.setANC_CDE("efe");
		ic.update(h);
	}
}
