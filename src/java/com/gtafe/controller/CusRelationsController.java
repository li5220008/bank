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

import com.gtafe.model.CusRelations;
import com.gtafe.service.ICusRelationsService;

/**
 * 银行卡控制层
 * @author li.wan
 *
 */
@Controller
@RequestMapping(value="/cusRelations")
public class CusRelationsController {
	 @Autowired
	    ICusRelationsService  cusRelationsService;
	    
	    
	    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
		public String  delete(HttpServletRequest request,HttpServletResponse response,@PathVariable int id) throws IOException {      
			   String msg=null;
	    	    if(cusRelationsService.realDeleteById(id)){
	    	    	System.out.println("删除成功！"); 
	    	    	msg="删除成功"; 
	    	    }else{
	    	    	System.out.println("删除失败");	    	    	
	    	    	msg="删除失败";
	    	    }
	    	    request.getSession().setAttribute("result", msg);
	    	    return "redirect:/cusRelations";	    	    
		}
	    
	    
	    
	    @RequestMapping(value="/add",method=RequestMethod.GET)
		public String add() {
			return "cusRelations/add";
		}
	    
	    @RequestMapping(value="/add",method=RequestMethod.POST)
		public String add(HttpServletRequest request,HttpServletResponse response, CusRelations cusRelations) throws IOException {
	    	String msg=null;
    	    if(cusRelationsService.add(cusRelations)){
    	    	System.out.println("保存成功！"); 
    	    	msg="保存成功"; 
    	    }else{
    	    	System.out.println("保存失败");	    	    	
    	    	msg="保存失败";
    	    }
    	    request.getSession().setAttribute("result", msg);
    	    return "redirect:/cusRelations";	    
		}
	    
	    @RequestMapping
		public String findAll(HttpServletRequest request,HttpServletResponse response,Model model) {	
	    	List<CusRelations> cusRelationsList=cusRelationsService.findAll();
			model.addAttribute("cusRelationsList",cusRelationsList);
			
			String msg=(String) request.getSession().getAttribute("result");
			model.addAttribute("result", msg);
			request.getSession().removeAttribute("result");	
			return "cusRelations/list";
		}
	    
		@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
		public String edit(@PathVariable int id,Model model) {		
			CusRelations cusRelations=cusRelationsService.selectByID(id);
			model.addAttribute("cusRelations", cusRelations);	
			return "cusRelations/edit";
		}
		
		@RequestMapping(value="/edit",method=RequestMethod.POST)
		public String updatePifccy(HttpServletRequest request,HttpServletResponse response,CusRelations cusRelations) throws IOException {	
			String msg=null;
				if(cusRelationsService.update(cusRelations)){
					msg="更新成功！"; 
				}else{
					msg="更新失败！";
				}
				request.getSession().setAttribute("result", msg);
					return "redirect:/cusRelations";		
		}
		
}
