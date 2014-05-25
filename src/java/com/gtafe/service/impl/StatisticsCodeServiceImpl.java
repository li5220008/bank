package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gtafe.dao.IStatisticsCodeDao;
import com.gtafe.model.StatisticsCode;
import com.gtafe.service.IStatisticsCodeService;
@Service
public class StatisticsCodeServiceImpl implements IStatisticsCodeService {
@Autowired
IStatisticsCodeDao statisticsCodeService;
	public StatisticsCode selectById(Object id) {
		return statisticsCodeService.selectById(id);
	}

	public List<StatisticsCode> fetchAll() {
		return statisticsCodeService.findAll();
	}

	public void add(StatisticsCode e) {
		statisticsCodeService.add(e);
	}

	public void update(StatisticsCode e) {
		statisticsCodeService.update(e);
	}

	public void deleteById(Object id) {
		statisticsCodeService.softDeleteById(id);
	}

}
