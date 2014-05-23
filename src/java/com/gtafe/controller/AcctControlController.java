package com.gtafe.controller;

import com.gtafe.dto.Message;
import com.gtafe.model.AcctControl;
import com.gtafe.service.IAcctControlService;
import com.gtafe.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * Desc: 内部账户控制表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-17
 * Time: 上午8:47
 */
@Controller
@RequestMapping("/acctControl")
public class AcctControlController {
    @Autowired
    private IAcctControlService service;

    @RequestMapping(value = {"/list"},method = RequestMethod.GET)
    public String list(Model model){
        List<AcctControl> acctControls = service.fetchAll();
        model.addAttribute("acctControls",acctControls);
        return "/acctControl/list";
    }

    @RequestMapping("/info")
    public @ResponseBody
    AcctControl info(int id) {
        AcctControl acctControl = service.selectById(id);
        return acctControl;
    }

    @RequestMapping(value = {"/add"},method = RequestMethod.GET)
    public String add(Model model) {
        AcctControl acctControl = new AcctControl();
        model.addAttribute(acctControl);
        return "/acctControl/add";
    }
    @RequestMapping(value = {"/addDo"},method = RequestMethod.POST)
    public String addDo(AcctControl acctControl,Model model){
        try {
        	service.add(acctControl);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("添加成功!","/acctControl/list","3");
        return CommonUtils.message(model, message);
    }

    @RequestMapping(value = {"/edit"},method = RequestMethod.GET)
    public String edit(int id, Model model){
        AcctControl acctControl = service.selectById(id);
        model.addAttribute("acctControl",acctControl);
        return "/acctControl/edit";
    }

    @RequestMapping(value = {"/editDo"},method = RequestMethod.POST)
    public String editDo(AcctControl acctControl,Model model) {
        try {
            service.update(acctControl);
        } catch (Exception e) {
            e.printStackTrace();
            return CommonUtils.message(model);
        }
        Message message = new Message("更新成功!","/acctControl/list","2");
        return CommonUtils.message(model, message);
    }

    @RequestMapping("/delete")
    public String delete(int id){
        service.softDeleteById(id);
        return "redirect:/acctControl/list";
    }

}
