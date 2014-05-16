package com.gtafe.service.impl;

import com.gtafe.dao.PifirtMapper;
import com.gtafe.model.Pifirt;
import com.gtafe.service.IPIFIRTService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 下午4:41
 */
@Service
public class PifirtServiceImpl implements IPIFIRTService {

    @Autowired
    private PifirtMapper pifirtMapper;

    public Pifirt selectById(Object id) {
        return pifirtMapper.selectById(id);
    }

    public List<Pifirt> fetchAll() {
        return pifirtMapper.findAll();
    }

    public void add(Pifirt pifbus) {
        //设置默认值
        pifbus.setRec_sts("P");
        pifirtMapper.add(pifbus);
    }

    public void update(Pifirt pifbus) {
        pifirtMapper.update(pifbus);
    }

    public void softDeleteById(Object id) {
        pifirtMapper.softDeleteById(id);
    }
}
