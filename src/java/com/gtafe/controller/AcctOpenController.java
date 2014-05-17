package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.AcctOpen;
import com.gtafe.service.IAcctOpenService;
import com.gtafe.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Desc: 内部账户开户表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-17
 * Time: 上午8:47
 */
@Controller
@RequestMapping("/acctOpen")
public class AcctOpenController {
    @Autowired
    private IAcctOpenService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<AcctOpen> acctOpens = service.fetchAll();
        model.addAttribute("acctOpens",acctOpens);
        return "/acctOpen/list";
    }

    @RequestMapping("/info")
    public @ResponseBody AcctOpen info(int id) {
        AcctOpen acctOpen = service.selectById(id);
        return acctOpen;
    }

    @RequestMapping(value = {"/add"},method = RequestMethod.GET)
    public String add(Model model) {
        AcctOpen acctOpen = new AcctOpen();
        model.addAttribute(acctOpen);
        return "/acctOpen/add";
    }
    @RequestMapping(value = {"/addDo"},method = RequestMethod.POST)
    public String addDo(AcctOpen acctOpen,Model model){
        try {
        	service.add(acctOpen);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("添加成功!","/acctOpen/list","3");
        return CommonUtils.message(model,message);
    }

    @RequestMapping(value = {"/edit"},method = RequestMethod.GET)
    public String edit(int id, Model model){
        AcctOpen acctOpen = service.selectById(id);
        model.addAttribute("acctOpen",acctOpen);
        return "/acctOpen/edit";
    }

    @RequestMapping(value = {"/editDo"},method = RequestMethod.POST)
    public String editDo(AcctOpen acctOpen,Model model) {
        try {
            service.update(acctOpen);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("更新成功!","/acctOpen/list","2");
        return CommonUtils.message(model,message);
    }

    @RequestMapping("/delete")
    public String delete(int id){
        service.softDeleteById(id);
        return "redirect:/acctOpen/list";
    }

}
