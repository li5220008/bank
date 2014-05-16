package com.gtafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gtafe.model.User;
import com.gtafe.service.IUserService;

@Controller
public class LoginController {

	@Autowired
	 IUserService userService;

	
	/**
	 * 访问登录页
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginGet(){
		return "login";
	}
	
	
	 /** 
     * 查询个人信息 
     *  
     * @param id 
     * @return 
     */  
    @RequestMapping(value = "/person/{id}/{username}/{password}", method = RequestMethod.GET)  
    public void porfile(@PathVariable int id, @PathVariable String username,  
            @PathVariable String password,HttpServletResponse response) {  
    	User user=new User();
    	user.setId(id);
    	user.setUsername(username);
    	user.setPassword(password);
        JSONObject jo=JSONObject.fromObject(user);
		PrintWriter out;
		try {
			response.setCharacterEncoding("utf-8");
			out = response.getWriter();
			String json = jo.toString();
			out.write(json);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    } 
    
        @RequestMapping(value = "/persons", method = RequestMethod.GET,produces = {"application/json;charset=UTF-8"})      	  
        public @ResponseBody Map<String, Object> getUserList() {      
            Map<String, Object> modelMap = new HashMap<String, Object>(3);  
            modelMap.put("total", "1");  
            modelMap.put("data", "9.5");  
            modelMap.put("success", "true");  
            return modelMap;  
        }  
	
	/**
	 * 请求登录，验证用户
	 * @param session
	 * @param loginname
	 * @param password
	 * @param code
	 * @return
	 */
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public ModelAndView loginPost(HttpSession session,@RequestParam String loginname,@RequestParam String password){
    	Map<String,String> map=new HashMap<String,String>();
    	map.put("username", loginname);
    	map.put("password", password);
    	
    	User user=userService.login(map); 
    	ModelAndView mav=new ModelAndView();
    	if(user!=null){
    		System.out.println("登录的用户名是"+user.getUsername());           
            session.setAttribute("user", user);
            mav.addObject("user",user);
            mav.addObject("msg","登录成功！");
            mav.setViewName("index");
    	}else{
    		mav.addObject("error","用户名或密码有误！");
            mav.setViewName("login");
    	}
        return mav;
	}
	
	/**
	 * 访问系统首页
	 * @param session
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/index")
	public String index(HttpSession session,Model model){

		return "index";
	}
	
	/**
	 * 进入首页后的默认页面
	 * @return
	 */
	@RequestMapping(value="/default")
	public String defaultPage(){
		return "default";
	}
	
	/**
	 * 用户注销
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/logout")
	public String logout(HttpSession session){
		/*session.removeAttribute("");*/	
		return "login";
	}
}
