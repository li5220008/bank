package com.gtafe.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gtafe.dao.IPriceCertificateDao;
import com.gtafe.model.PriceCertificate;
import com.gtafe.service.IPriceCertificateService;


@Service
public class PriceCertificateServieImpl implements IPriceCertificateService{
	@Autowired
    IPriceCertificateDao priceCertificateDao;
		
	public PriceCertificate selectByID(int id) {		
		return priceCertificateDao.selectByID(id);
	}

	public List<PriceCertificate> findAll() {
		return priceCertificateDao.findAll();
	}

	public boolean add(PriceCertificate t) {
		try {
			priceCertificateDao.add(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}

	public boolean update(PriceCertificate t) {
		try {
			priceCertificateDao.update(t);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
		
	}


	public boolean realDeleteById(int id) {
		try {
			priceCertificateDao.realDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean softDeleteById(int id) {
		try {
			priceCertificateDao.softDeleteById(id);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

}
