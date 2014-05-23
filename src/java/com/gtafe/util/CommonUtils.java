package com.gtafe.util;

import com.gtafe.dto.Message;
import org.springframework.ui.Model;

/**
 * Desc: 通用工具类
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
