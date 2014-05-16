package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.BankCar;

public interface IBankCarDao{
	    BankCar selectByID(int id);  
	    List<BankCar> findAll();
	    void add(BankCar bankCar);
	    void update(BankCar bankCar);
	    void realDeleteById(int id);
	    void softDeleteById(int id);
}
