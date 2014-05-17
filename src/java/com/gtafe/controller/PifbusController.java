package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.Pifbus;
import com.gtafe.service.IPIFBUSService;
import com.gtafe.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Desc: 业务码表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-6
 * Time: 上午11:47
 */
@Controller
@RequestMapping("/pifbus")
public class PifbusController {
    @Autowired
    private IPIFBUSService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<Pifbus> pifbuses = service.fetchAll();
        model.addAttribute("pifbus",pifbuses);
        return "/pifbus/list";
    }

    @RequestMapping("/info")
    public @ResponseBody Pifbus info(String id) {
        Pifbus pifbus = service.selectById(id);
        return pifbus;
    }

    @RequestMapping(value = {"/add"},method = RequestMethod.GET)
    public String add(Model model) {
        Pifbus pifbus = new Pifbus();
        model.addAttribute(pifbus);
        return "/pifbus/add";
    }
    @RequestMapping(value = {"/addDo"},method = RequestMethod.POST)
    public String addDo(Pifbus pifbus,Model model){
        try {
        	service.add(pifbus);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("添加成功!","/pifbus/list","3");
        return CommonUtils.message(model,message);
    }

    @RequestMapping(value = {"/update"},method = RequestMethod.GET)
    public String update(String id, Model model){
        Pifbus pifbus = service.selectById(id);
        model.addAttribute(pifbus);
        return "/pifbus/update";
    }

    @RequestMapping(value = {"/updateDo"},method = RequestMethod.POST)
    public String updateDoo(Pifbus pifbus,Model model) {
        try {
            service.update(pifbus);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("更新成功!","/pifbus/list","2");
        return CommonUtils.message(model,message);
    }

    @RequestMapping("/delete")
    public String delete(String id){
        service.softDeleteById(id);
        return "redirect:/pifbus/list";
    }

}
