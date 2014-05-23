package com.gtafe.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gtafe.model.Pifprd;
import com.gtafe.service.IPifprdService;


/**
 * 产品定义表控制层
 * @author li.wan
 *
 */
@Controller
@RequestMapping(value="/pifprd")
public class PifprdController {
    @Autowired
    IPifprdService  pifprdService;
    
    
    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
		public String  delete(HttpServletRequest request,HttpServletResponse response,@PathVariable String id) throws IOException {      
			   String msg=null;
	    	    if(pifprdService.realDeleteById(id)){
	    	    	System.out.println("删除成功！"); 
	    	    	msg="删除成功"; 
	    	    }else{
	    	    	System.out.println("删除失败");	    	    	
	    	    	msg="删除失败";
	    	    }
	    	    request.getSession().setAttribute("result", msg);
	    	    return "redirect:/pifprd";	    	    
		}
	    
	    
	    
	    @RequestMapping(value="/add",method=RequestMethod.GET)
		public String add() {
			return "pifprd/add";
		}
	    
	    @RequestMapping(value="/add",method=RequestMethod.POST)
		public String add(HttpServletRequest request,HttpServletResponse response, Pifprd pifprd) throws IOException {
	    	String msg=null;
	    if(pifprd.getPrd_cde().equals("")){
	        pifprd.setPrd_cde(null);
	    }
	    if(pifprd.getIrt_key().equals("")){
	        pifprd.setIrt_key(null);
	    }
	    if(pifprd.getFrt_key().equals("")){
	        pifprd.setFrt_key(null);
	    }
	    if(pifprd.getXrt_key().equals("")){
	        pifprd.setXrt_key(null);
	    }
  	    if(pifprdService.add(pifprd)){
  	    	System.out.println("保存成功！"); 
  	    	msg="保存成功"; 
  	    }else{
  	    	System.out.println("保存失败");	    	    	
  	    	msg="保存失败";
  	    }
  	    request.getSession().setAttribute("result", msg);
  	    return "redirect:/pifprd";	    
		}
	    
	    @RequestMapping
		public String findAll(HttpServletRequest request,HttpServletResponse response,Model model) {	
	    	List<Pifprd> pifprdList=pifprdService.findAll();
			model.addAttribute("pifprdList",pifprdList);
			
			String msg=(String) request.getSession().getAttribute("result");
			model.addAttribute("result", msg);
			request.getSession().removeAttribute("result");	
			return "pifprd/list";
		}
	    
		@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
		public String edit(@PathVariable String id,Model model) {		
			Pifprd pifprd=pifprdService.selectByID(id);
			model.addAttribute("pifprd", pifprd);	
			return "pifprd/edit";
		}
		
		@RequestMapping(value="/edit",method=RequestMethod.POST)
		public String updatepifprd(HttpServletRequest request,HttpServletResponse response,Pifprd pifprd) throws IOException {	
			String msg=null;
			if(pifprd.getPrd_cde().equals("")){
		        pifprd.setPrd_cde(null);
		    }
		    if(pifprd.getIrt_key().equals("")){
		        pifprd.setIrt_key(null);
		    }
		    if(pifprd.getFrt_key().equals("")){
		        pifprd.setFrt_key(null);
		    }
		    if(pifprd.getXrt_key().equals("")){
		        pifprd.setXrt_key(null);
		    }
				if(pifprdService.update(pifprd)){
					msg="更新成功！"; 
				}else{
					msg="更新失败！";
				}
				request.getSession().setAttribute("result", msg);
					return "redirect:/pifprd";		
		}
}
