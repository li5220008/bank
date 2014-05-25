package com.gtafe.service.impl;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gtafe.dao.AccrueParamsMapper;
import com.gtafe.model.AccrueParams;
import com.gtafe.service.IAccrueParamsService;
import com.gtafe.util.MathUtil;
@Service
public class AccrueParamsServiceImpl implements IAccrueParamsService {
    @Autowired
	private AccrueParamsMapper apms;
	


	public void add(AccrueParams E) {
		apms.add(E);
	}

	public AccrueParamsMapper getapms() {
		return apms;
	}

	public void setapms(AccrueParamsMapper apms) {
		this.apms = apms;
	}

	public void update(AccrueParams E) {
		apms.update(E);
	}

	public AccrueParams selectById(Object id) {
		// TODO Auto-generated method stub
		return apms.selectById(MathUtil.getBigDecimal(id));
	}

	public void deleteById(Object id) {
		apms.delete(MathUtil.getBigDecimal(id));
		
	}

	public List<AccrueParams> fetchAll() {
		// TODO Auto-generated method stub
		 return apms.fetchAll();
	}

}
