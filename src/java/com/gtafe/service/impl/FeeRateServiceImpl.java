package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.FeeRateMapper;
import com.gtafe.model.FeeRate;
import com.gtafe.service.IFeeRateService;

@Service
public class FeeRateServiceImpl implements IFeeRateService {
    
	@Autowired
	private FeeRateMapper frm;

	public void addFeeRate(FeeRate pf) {
		frm.addFeeRate(pf);
	}

	public void deleteFeeRate(String id) {
      frm.deleteFeeRate(id);
	}

	public List<FeeRate> findAll() {
		return frm.findAll();
	}

	public FeeRate selectFeeRateByID(String id) {
		return frm.selectFeeRateByID(id);
	}

	public void update(FeeRate fr) {
		frm.update(fr);
		
	}

}
