package com.gtafe.service;

import java.util.List;

import com.gtafe.model.PriceCertificate;


/**
 * 客户关系操作服务接口
 * @author li.wan
 *
 */
public interface IPriceCertificateService {
    PriceCertificate selectByID(int id);  
    List<PriceCertificate> findAll();
    boolean add(PriceCertificate priceCertificate);
    boolean update(PriceCertificate priceCertificate);
    boolean realDeleteById(int id);
    boolean softDeleteById(int id);
}
