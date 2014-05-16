package com.gtafe.util;

import org.springframework.ui.Model;

import com.gtafe.dto.Message;

/**
 * Desc:
 * User: weiguili(li5220008@gmail.com)
 * Date: 5/3/14
 * Time: 12:46 AM
 */
public class CommonUtils {

    /**
     * 服务器消息方法
     * @param model
     * @return
     */
    public static String message(Model model,Message message){
        model.addAttribute("message",message);
        return "/message";
    }

    /**
     * 重载
     * @param model
     * @return
     */
    public static String message(Model model) {
        Message message = new Message("操作有误，服务器错误！", "/pifbus/list");
        return message(model, message);
    }

}
