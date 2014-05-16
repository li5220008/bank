package com.gtafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gtafe.model.BankCar;
import com.gtafe.service.IBankCarService;

/**
 * 银行卡控制层
 * @author li.wan
 *
 */
@Controller
@RequestMapping(value="/bankcar")
public class BankCarController {
	 @Autowired
	    IBankCarService  bankCarService;
	    
	    
	    @RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
		public String  delete(HttpServletRequest request,HttpServletResponse response,@PathVariable int id) throws IOException {      
			   String msg=null;
	    	    if(bankCarService.realDeleteById(id)){
	    	    	System.out.println("删除成功！"); 
	    	    	msg="删除成功"; 
	    	    }else{
	    	    	System.out.println("删除失败");	    	    	
	    	    	msg="删除失败";
	    	    }
	    	    request.getSession().setAttribute("result", msg);
	    	    return "redirect:/bankcar";	    	    
		}
	    
	    
	    
	    @RequestMapping(value="/add",method=RequestMethod.GET)
		public String add() {
			return "bankcar/add";
		}
	    
	    @RequestMapping(value="/add",method=RequestMethod.POST)
		public String add(HttpServletRequest request,HttpServletResponse response, BankCar bankcar) throws IOException {
	    	String msg=null;
    	    if(bankCarService.add(bankcar)){
    	    	System.out.println("保存成功！"); 
    	    	msg="保存成功"; 
    	    }else{
    	    	System.out.println("保存失败");	    	    	
    	    	msg="保存失败";
    	    }
    	    request.getSession().setAttribute("result", msg);
    	    return "redirect:/bankcar";	    
		}
	    
	    @RequestMapping
		public String findAll(HttpServletRequest request,HttpServletResponse response,Model model) {	
	    	List<BankCar> bankCarList=bankCarService.findAll();
			model.addAttribute("bankcarList",bankCarList);
			
			String msg=(String) request.getSession().getAttribute("result");
			model.addAttribute("result", msg);
			request.getSession().removeAttribute("result");	
			return "bankcar/list";
		}
	    
		@RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
		public String edit(@PathVariable int id,Model model) {		
			BankCar bankCar=bankCarService.selectByID(id);
			model.addAttribute("bankcar", bankCar);	
			System.out.println("要修改的货币是"+bankCar.getCar_name()+"卡种是"+bankCar.getCar_type());
			return "bankcar/edit";
		}
		
		@RequestMapping(value="/edit",method=RequestMethod.POST)
		public String updatePifccy(HttpServletRequest request,HttpServletResponse response,BankCar bankcar) throws IOException {	
			System.out.println("卡种是："+bankcar.getCar_type());
			String msg=null;
				if(bankCarService.update(bankcar)){
					msg="更新成功！"; 
				}else{
					msg="更新失败！";
				}
				request.getSession().setAttribute("result", msg);
					return "redirect:/bankcar";		
		}
		
}
