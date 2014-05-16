package com.gtafe.service;


import java.util.List;

/**
 * Desc: 基础增删改查通用服务类
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午7:20
 */
public interface IBaseService<E> {
    //E selectById(String id);
    E selectById(Object id);//为了兼容String 和int类型故用Object
    List<E> fetchAll();
    void add(E e);
    void update(E e);
    void softDeleteById(Object id);
}
