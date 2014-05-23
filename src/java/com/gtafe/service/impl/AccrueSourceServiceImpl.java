package com.gtafe.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gtafe.dao.AccrueSourceMapper;
import com.gtafe.model.AccrueSource;
import com.gtafe.service.IAccrueSourceService;
import com.gtafe.util.MathUtil;

@Service
public class AccrueSourceServiceImpl implements IAccrueSourceService {
	@Autowired
	private AccrueSourceMapper asm;

	

	public void add(AccrueSource E) {
		// TODO Auto-generated method stub
		asm.add(E);
	}

	public void update(AccrueSource E) {
		// TODO Auto-generated method stub
		asm.update(E);
	}

	public AccrueSource selectById(Object id) {
		// TODO Auto-generated method stub
		return asm.findById(MathUtil.getBigDecimal(id));
	}

	public void softDeleteById(Object id) {
		asm.delete(MathUtil.getBigDecimal(id));
		
	}

	public List<AccrueSource> fetchAll() {
		// TODO Auto-generated method stub
		return asm.fetchAll();
	}


}
