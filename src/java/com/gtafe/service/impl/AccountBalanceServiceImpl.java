package com.gtafe.service.impl;

import com.gtafe.dao.IAccountBalanceDao;
import com.gtafe.model.AccountBalance;
import com.gtafe.service.IAccountBalanceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Desc: ﻿账户余额
 * User: weiguili(li5220008@gmail.com)
 * Date: 5/25/14
 * Time: 3:30 PM
 */
@Service
public class AccountBalanceServiceImpl implements IAccountBalanceService {
    @Autowired
    private IAccountBalanceDao service;

    @Override
    public AccountBalance selectById(Object id) {
        return service.selectById(id);
    }

    @Override
    public List<AccountBalance> fetchAll() {
        return service.findAll();
    }

    @Override
    public void add(AccountBalance accountBalance) {

    }

    @Override
    public void update(AccountBalance accountBalance) {

    }

    @Override
    public void deleteById(Object id) {
        service.softDeleteById(id);
    }
}
