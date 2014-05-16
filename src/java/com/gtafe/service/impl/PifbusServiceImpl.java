package com.gtafe.service.impl;

import com.gtafe.dao.PifbusMapper;
import com.gtafe.model.Pifbus;
import com.gtafe.service.IPIFBUSService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc: 业务码表业务实现类
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午4:41
 */
@Service
public class PifbusServiceImpl implements IPIFBUSService {

    @Autowired
    private PifbusMapper pifbusMapper;

    public Pifbus selectById(Object id) {
        return pifbusMapper.selectById(id);
    }

    public List<Pifbus> fetchAll() {
        return pifbusMapper.findAll();
    }

    public void add(Pifbus pifbus) {
        //设置默认值
        pifbus.setRec_sts("P");
        pifbusMapper.add(pifbus);
    }

    public void update(Pifbus pifbus) {
        pifbusMapper.update(pifbus);
    }

    public void softDeleteById(Object id) {
        pifbusMapper.softDeleteById(id);
    }
}
