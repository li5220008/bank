package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.Pifirt;
import com.gtafe.service.IPIFIRTService;
import com.gtafe.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Desc: 利率表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-6
 * Time: 上午11:47
 */
@Controller
@RequestMapping("/pifirt")
public class PifirtController {
    @Autowired
    private IPIFIRTService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<Pifirt> pifirtes = service.fetchAll();
        model.addAttribute("pifirt",pifirtes);
        return "/pifirt/list";
    }

    @RequestMapping("/info")
    public @ResponseBody
    Pifirt info(String id) {
        Pifirt pifirt = service.selectById(id);
        return pifirt;
    }

    @RequestMapping(value = {"/add"},method = RequestMethod.GET)
    public String add(Model model) {
        Pifirt pifirt = new Pifirt();
        model.addAttribute(pifirt);
        return "/pifirt/add";
    }
    @RequestMapping(value = {"/addDo"},method = RequestMethod.POST)
    public String addDo(Pifirt pifirt,Model model){
        try {
        	service.add(pifirt);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("添加成功!","/pifirt/list","2");
        return CommonUtils.message(model, message);
    }

    @RequestMapping(value = {"/update"},method = RequestMethod.GET)
    public String update(String id, Model model){
        Pifirt pifirt = service.selectById(id);
        model.addAttribute(pifirt);
        return "/pifirt/update";
    }

    @RequestMapping(value = {"/updateDo"},method = RequestMethod.POST)
    public String updateDoo(Pifirt pifirt,Model model) {
        try {
            service.update(pifirt);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("更新成功!","/pifirt/list","2");
        return CommonUtils.message(model, message);
    }

    @RequestMapping("/delete")
    public String delete(String id){
        service.deleteById(id);
        return "redirect:/pifirt/list";
    }

}
