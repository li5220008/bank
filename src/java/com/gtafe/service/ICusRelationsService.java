package com.gtafe.service;

import java.util.List;

import com.gtafe.model.CusRelations;


/**
 * 客户关系操作服务接口
 * @author li.wan
 *
 */
public interface ICusRelationsService {
    CusRelations selectByID(int id);  
    List<CusRelations> findAll();
    boolean add(CusRelations cusRelations);
    boolean update(CusRelations cusRelations);
    boolean realDeleteById(int id);
    boolean softDeleteById(int id);
}
