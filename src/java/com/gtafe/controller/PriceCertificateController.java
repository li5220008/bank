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

import com.gtafe.model.PriceCertificate;
import com.gtafe.service.IPriceCertificateService;

/**
 * 有价单证控制层
 * @author li.wan
 *
 */
@Controller
@RequestMapping(value="/priceCertificate")
public class PriceCertificateController {
	 @Autowired
	    IPriceCertificateService  priceCertificateService;
	    
	    
	    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
		public String  delete(HttpServletRequest request,HttpServletResponse response,@PathVariable int id) throws IOException {      
			   String msg=null;
	    	    if(priceCertificateService.realDeleteById(id)){
	    	    	System.out.println("删除成功！"); 
	    	    	msg="删除成功"; 
	    	    }else{
	    	    	System.out.println("删除失败");	    	    	
	    	    	msg="删除失败";
	    	    }
	    	    request.getSession().setAttribute("result", msg);
	    	    return "redirect:/priceCertificate";	    	    
		}
	    
	    
	    
	    @RequestMapping(value="/add",method=RequestMethod.GET)
		public String add() {
			return "priceCertificate/add";
		}
	    
	    @RequestMapping(value="/add",method=RequestMethod.POST)
		public String add(HttpServletRequest request,HttpServletResponse response, PriceCertificate priceCertificate) throws IOException {
	    	String msg=null;
    	    if(priceCertificateService.add(priceCertificate)){
    	    	System.out.println("保存成功！"); 
    	    	msg="保存成功"; 
    	    }else{
    	    	System.out.println("保存失败");	    	    	
    	    	msg="保存失败";
    	    }
    	    request.getSession().setAttribute("result", msg);
    	    return "redirect:/priceCertificate";	    
		}
	    
	    @RequestMapping
		public String findAll(HttpServletRequest request,HttpServletResponse response,Model model) {	
	    	List<PriceCertificate> priceCertificateList=priceCertificateService.findAll();
			model.addAttribute("priceCertificateList",priceCertificateList);
			
			String msg=(String) request.getSession().getAttribute("result");
			model.addAttribute("result", msg);
			request.getSession().removeAttribute("result");	
			return "priceCertificate/list";
		}
	    
		@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
		public String edit(@PathVariable int id,Model model) {		
			PriceCertificate priceCertificate=priceCertificateService.selectByID(id);
			model.addAttribute("priceCertificate", priceCertificate);	
			return "priceCertificate/edit";
		}
		
		@RequestMapping(value="/edit",method=RequestMethod.POST)
		public String updatePifccy(HttpServletRequest request,HttpServletResponse response,PriceCertificate priceCertificate) throws IOException {	
			String msg=null;
				if(priceCertificateService.update(priceCertificate)){
					msg="更新成功！"; 
				}else{
					msg="更新失败！";
				}
				request.getSession().setAttribute("result", msg);
					return "redirect:/priceCertificate";		
		}
		
}
