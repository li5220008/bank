package com.gtafe.service.impl;

import com.gtafe.dao.IPublicCodeDao;
import com.gtafe.model.PublicCode;
import com.gtafe.service.IPublicCodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc: 公共代码表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月15日
 * Time: 下午5:19:41
 */
@Service
public class PublicCodeServiceImpl implements IPublicCodeService {
	@Autowired
	private IPublicCodeDao dao;
	public PublicCode selectById(Object id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public List<PublicCode> fetchAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	public void add(PublicCode e) {
		// TODO Auto-generated method stub
		dao.add(e);
	}

	public void update(PublicCode e) {
		// TODO Auto-generated method stub
		dao.update(e);
	}

	public void deleteById(Object id) {
		// TODO Auto-generated method stub
		dao.softDeleteById(id);
	}
}
