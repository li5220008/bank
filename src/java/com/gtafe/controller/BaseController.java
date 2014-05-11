package com.gtafe.controller;

import com.gtafe.dto.Message;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 5/10/14
 * Time: 8:59 PM
 */
public class BaseController {

    /**
     * 服务器错误消息方法
     * @param model
     * @return
     */
    protected String failMessage(Model model){
        Message message = new Message("操作有误，服务器错误！","/pifbus/list");
        model.addAttribute("message",message);
        return "/message";
    }
}
