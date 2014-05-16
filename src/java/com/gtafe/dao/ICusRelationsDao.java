package com.gtafe.dao;

import java.util.List;

import com.gtafe.model.CusRelations;

public interface ICusRelationsDao{
	    CusRelations selectByID(int id);  
	    List<CusRelations> findAll();
	    void add(CusRelations cusRelations);
	    void update(CusRelations cusRelations);
	    void realDeleteById(int id);
	    void softDeleteById(int id);
}
