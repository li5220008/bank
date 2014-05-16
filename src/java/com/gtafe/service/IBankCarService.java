package com.gtafe.service;

import java.util.List;

import com.gtafe.model.BankCar;

public interface IBankCarService{
	    BankCar selectByID(int id);  
	    List<BankCar> findAll();
	    boolean add(BankCar bankCar);
	    boolean update(BankCar bankCar);
	    boolean realDeleteById(int id);
	    boolean softDeleteById(int id);
}
