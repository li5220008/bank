package com.gtafe.controller;

import com.gtafe.util.ImgUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Desc: 全局入口
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-10
 * Time: 上午8:45
 */
@Controller
public class GlobalController {
   /* @RequestMapping("/index")
    public String index(Model model, HttpSession session) {
        model.addAttribute("account",session.getAttribute("account"));
        return "index";
    }*/

    /**
     * 消息
     * @return
     */
    @RequestMapping("/message")
    public String message() {
        return "message";
    }

    /**
     * 生成中文验证码
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @RequestMapping("/randomImg")
    public void randomImg(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //指定输入内容
        resp.setContentType("image/jpeg");
        //控制浏览器不要缓存
        resp.setDateHeader("expries",-1);
        resp.setHeader("Cache-Control","no-cache");
        resp.setHeader("Pragma","no-cache");
        ImgUtils.randomImg(resp.getOutputStream());
    }

    /**
     * 头部
     * @return
     */
    @RequestMapping("/head")
    public String head(){
        return "head";
    }

    /**
     *  主体
     * @return
     */
    @RequestMapping("/main")
    public String main(){
        return "main";
    }

    /**
     *  底部
     * @return
     */
    @RequestMapping("/foot")
    public String foot(){
        return "foot";
    }
}
