package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.CountryCode;
import com.gtafe.service.ICountryCodeService;
import com.gtafe.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Desc: 国家码表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-16
 * Time: 上午11:47
 */
@Controller
@RequestMapping("/countryCode")
public class CountryCodeController {
    @Autowired
    private ICountryCodeService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<CountryCode> countryCodes = service.fetchAll();
        model.addAttribute("countryCode",countryCodes);
        return "/countryCode/list";
    }

    @RequestMapping("/info")
    public @ResponseBody
    CountryCode info(int id) {
        CountryCode countryCode = service.selectById(id);
        return countryCode;
    }

    @RequestMapping(value = {"/add"},method = RequestMethod.GET)
    public String add(Model model) {
        CountryCode countryCode = new CountryCode();
        model.addAttribute(countryCode);
        return "/countryCode/add";
    }
    @RequestMapping(value = {"/addDo"},method = RequestMethod.POST)
    public String addDo(CountryCode countryCode,Model model){
        try {
        	service.add(countryCode);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("添加成功!","/countryCode/list","3");
        return CommonUtils.message(model, message);
    }

    @RequestMapping(value = {"/update"},method = RequestMethod.GET)
    public String update(int id, Model model){
        CountryCode countryCode = service.selectById(id);
        model.addAttribute("countryCode",countryCode);
        return "/countryCode/update";
    }

    @RequestMapping(value = {"/updateDo"},method = RequestMethod.POST)
    public String updateDoo(CountryCode countryCode,Model model) {
        try {
            service.update(countryCode);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("更新成功!","/countryCode/list","2");
        return CommonUtils.message(model, message);
    }

    @RequestMapping("/delete")
    public String delete(int id){
        service.deleteById(id);
        return "redirect:/countryCode/list";
    }

}
