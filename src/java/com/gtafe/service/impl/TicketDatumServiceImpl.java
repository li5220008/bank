package com.gtafe.service.impl;

import com.gtafe.dao.ITicketDatumDao;
import com.gtafe.model.TicketDatum;
import com.gtafe.service.ITicketDatumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc: 劵别资料
 * User: weiguili(li5220008@gmail.com)
 * Date: 5/25/14
 * Time: 3:32 PM
 */
@Service
public class TicketDatumServiceImpl implements ITicketDatumService {

    @Autowired
    private ITicketDatumDao service;

    @Override
    public TicketDatum selectById(Object id) {
        return null;
    }

    @Override
    public List<TicketDatum> fetchAll() {
        return null;
    }

    @Override
    public void add(TicketDatum ticketDatum) {

    }

    @Override
    public void update(TicketDatum ticketDatum) {

    }

    @Override
    public void deleteById(Object id) {

    }
}
