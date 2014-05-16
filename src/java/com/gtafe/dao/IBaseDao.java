package com.gtafe.dao;



import java.util.List;

/**
 * Desc: 基础通用数据访问接口，包含常用增删改查操作
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午1:46
 */
public interface IBaseDao<T> {
    T selectById(Object id);
    List<T> findAll();
    void add(T t);
    void update(T t);
    void softDeleteById(Object id);//软删除方法，即假删除，只改变状态
}
