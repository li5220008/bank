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

import com.gtafe.model.Pifpdc;
import com.gtafe.service.IPifpdcService;



/**
 * 产品码表
 * @author li.wan
 *
 */
@Controller
@RequestMapping(value="/pifpdc")
public class PifpdcController {
    @Autowired
    IPifpdcService  pifpdcService;
    
    
    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
  		public String  delete(HttpServletRequest request,HttpServletResponse response,@PathVariable String id) throws IOException {      
  			   String msg=null;
  	    	    if(pifpdcService.realDeleteById(id)){
  	    	    	System.out.println("删除成功！"); 
  	    	    	msg="删除成功"; 
  	    	    }else{
  	    	    	System.out.println("删除失败");	    	    	
  	    	    	msg="删除失败";
  	    	    }
  	    	    request.getSession().setAttribute("result", msg);
  	    	    return "redirect:/pifpdc";	    	    
  		}
  	    
  	    
  	    
  	    @RequestMapping(value="/add",method=RequestMethod.GET)
  		public String add() {
  			return "pifpdc/add";
  		}
  	    
  	    @RequestMapping(value="/add",method=RequestMethod.POST)
  		public String add(HttpServletRequest request,HttpServletResponse response, Pifpdc pifpdc) throws IOException {
  	    	String msg=null;
  	    	if(pifpdc.getBus_cde().equals("")){
  	    		pifpdc.setBus_cde(null);
  	    	}
      	    if(pifpdcService.add(pifpdc)){
      	    	System.out.println("保存成功！"); 
      	    	msg="保存成功"; 
      	    }else{
      	    	System.out.println("保存失败");	    	    	
      	    	msg="保存失败";
      	    }
      	    request.getSession().setAttribute("result", msg);
      	    return "redirect:/pifpdc";	    
  		}
  	    
  	    @RequestMapping
  		public String findAll(HttpServletRequest request,HttpServletResponse response,Model model) {	
  	    	List<Pifpdc> pifpdcList=pifpdcService.findAll();
  			model.addAttribute("pifpdcList",pifpdcList);
  			
  			String msg=(String) request.getSession().getAttribute("result");
  			model.addAttribute("result", msg);
  			request.getSession().removeAttribute("result");	
  			return "pifpdc/list";
  		}
  	    
  		@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
  		public String edit(@PathVariable String id,Model model) {		
  			Pifpdc pifpdc=pifpdcService.selectByID(id);
  			model.addAttribute("pifpdc", pifpdc);	
  			return "pifpdc/edit";
  		}
  		
  		@RequestMapping(value="/edit",method=RequestMethod.POST)
  		public String updatePifccy(HttpServletRequest request,HttpServletResponse response,Pifpdc pifpdc) throws IOException {	
  			String msg=null;
  			if(pifpdc.getBus_cde().equals("")){
  	    		pifpdc.setBus_cde(null);
  	    	}
  				if(pifpdcService.update(pifpdc)){
  					msg="更新成功！"; 
  				}else{
  					msg="更新失败！";
  				}
  				request.getSession().setAttribute("result", msg);
  					return "redirect:/pifpdc";		
  		}
}
