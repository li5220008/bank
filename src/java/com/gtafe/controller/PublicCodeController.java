package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.PublicCode;
import com.gtafe.service.IPublicCodeService;
import com.gtafe.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Desc: 公用码表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-17
 * Time: 上午8:47
 */
@Controller
@RequestMapping("/publicCode")
public class PublicCodeController {
    @Autowired
    private IPublicCodeService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<PublicCode> publicCodes = service.fetchAll();
        model.addAttribute("publicCodes",publicCodes);
        return "/publicCode/list";
    }

    @RequestMapping("/info")
    public @ResponseBody
    PublicCode info(int id) {
        PublicCode publicCode = service.selectById(id);
        return publicCode;
    }

    @RequestMapping(value = {"/add"},method = RequestMethod.GET)
    public String add(Model model) {
        PublicCode publicCode = new PublicCode();
        model.addAttribute(publicCode);
        return "/publicCode/add";
    }
    @RequestMapping(value = {"/addDo"},method = RequestMethod.POST)
    public String addDo(PublicCode publicCode,Model model){
        try {
        	service.add(publicCode);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("添加成功!","/publicCode/list","3");
        return CommonUtils.message(model, message);
    }

    @RequestMapping(value = {"/edit"},method = RequestMethod.GET)
    public String edit(int id, Model model){
        PublicCode publicCode = service.selectById(id);
        model.addAttribute("publicCode",publicCode);
        return "/publicCode/edit";
    }

    @RequestMapping(value = {"/editDo"},method = RequestMethod.POST)
    public String editDo(PublicCode publicCode,Model model) {
        try {
            service.update(publicCode);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("更新成功!","/publicCode/list","2");
        return CommonUtils.message(model, message);
    }

    @RequestMapping("/delete")
    public String delete(int id){
        service.deleteById(id);
        return "redirect:/publicCode/list";
    }

}
