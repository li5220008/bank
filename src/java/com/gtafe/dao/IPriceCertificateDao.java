package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.BankCar;
import com.gtafe.model.PriceCertificate;

public interface IPriceCertificateDao{
	    PriceCertificate selectByID(int id);  
	    List<PriceCertificate> findAll();
	    void add(PriceCertificate priceCertificate);
	    void update(PriceCertificate priceCertificate);
	    void realDeleteById(int id);
	    void softDeleteById(int id);
}
