package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.Pifbus;
import com.gtafe.service.IPIFBUSService;
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
@RequestMapping("/pifbus")
public class PifbusController extends BaseController {
    @Autowired
    private IPIFBUSService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<Pifbus> pifbuses = service.selectAll();
        model.addAttribute("pifbus",pifbuses);
        return "/pifbus/list";
    }

    @RequestMapping("/info")
    public @ResponseBody Pifbus info(String id) {
        Pifbus pifbus = service.selectByID(id);
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
        Message message = null;
        service.add(pifbus);
        try {
        } catch (Exception e) {
            e.printStackTrace();
            return errorMessage(model);
        }
        message = new Message("添加成功!","/pifbus/list","3");
        model.addAttribute("message",message);
        return "/errorMessage";
    }

    @RequestMapping(value = {"/update"},method = RequestMethod.GET)
    public String update(String id, Model model){
        Pifbus pifbus = service.selectByID(id);
        model.addAttribute(pifbus);
        return "/pifbus/update";
    }

    @RequestMapping(value = {"/updateDo"},method = RequestMethod.POST)
    public String updateDoo(Pifbus pifbus,Model model) {
        try {
            service.update(pifbus);
        } catch (Exception e) {
            e.printStackTrace();
            return errorMessage(model);
        }
        return "redirect:/pifbus/list";
    }

    @RequestMapping("/delete")
    public String delete(String id){
        service.softDeleteById(id);
        return "redirect:/pifbus/list";
    }

}
