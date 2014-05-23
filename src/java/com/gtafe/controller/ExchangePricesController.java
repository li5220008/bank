package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.ExchangeReceipts;
import com.gtafe.service.IExchangeReceiptsService;
import com.gtafe.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Desc: 结售汇牌价表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-17
 * Time: 上午8:47
 */
@Controller
@RequestMapping("/exchangePrices")
public class ExchangePricesController {
    @Autowired
    private IExchangeReceiptsService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<ExchangeReceipts> exchangeReceiptss = service.fetchAll();
        model.addAttribute("exchangeReceiptss",exchangeReceiptss);
        return "/exchangePrices/list";
    }

    @RequestMapping("/info")
    public @ResponseBody
    ExchangeReceipts info(int id) {
        ExchangeReceipts exchangeReceipts = service.selectById(id);
        return exchangeReceipts;
    }

    @RequestMapping(value = {"/add"},method = RequestMethod.GET)
    public String add(Model model) {
        ExchangeReceipts exchangeReceipts = new ExchangeReceipts();
        model.addAttribute(exchangeReceipts);
        return "/exchangePrices/add";
    }
    @RequestMapping(value = {"/addDo"},method = RequestMethod.POST)
    public String addDo(ExchangeReceipts exchangeReceipts,Model model){
        try {
        	service.add(exchangeReceipts);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("添加成功!","/exchangePrices/list","3");
        return CommonUtils.message(model, message);
    }

    @RequestMapping(value = {"/edit"},method = RequestMethod.GET)
    public String edit(int id, Model model){
        ExchangeReceipts exchangeReceipts = service.selectById(id);
        model.addAttribute("exchangeReceipts",exchangeReceipts);
        return "/exchangePrices/edit";
    }

    @RequestMapping(value = {"/editDo"},method = RequestMethod.POST)
    public String editDo(ExchangeReceipts exchangeReceipts,Model model) {
        try {
            service.update(exchangeReceipts);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("更新成功!","/exchangePrices/list","2");
        return CommonUtils.message(model, message);
    }

    @RequestMapping("/delete")
    public String delete(int id){
        service.softDeleteById(id);
        return "redirect:/exchangePrices/list";
    }

}
