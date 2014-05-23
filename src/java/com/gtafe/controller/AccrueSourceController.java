package com.gtafe.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gtafe.model.AccrueSource;
import com.gtafe.service.IAccrueSourceService;
import com.gtafe.util.MathUtil;

@Controller
public class AccrueSourceController {
	@Autowired
	IAccrueSourceService asm;
	@RequestMapping(value="/accrueSourceList")
	public String listAll(Model model) {
		List<AccrueSource> l = asm.fetchAll();
		model.addAttribute("list", l);
		return "accrue/accrueSource_list";
	}

	@RequestMapping(value = "/addAccrueSource", method = RequestMethod.GET)
	public String addAccrueSource(Model model) {
		model.addAttribute("as", new AccrueSource());
		return "accrue/accrueSource_add";
	}

	@RequestMapping(value = "/deleteAccureSource")
	public String deleteUser(String id) {
		asm.softDeleteById(id);;
		return "redirect:/accrueSourceList";
	}

	@RequestMapping(value = "/addAccrueSource", method = RequestMethod.POST)
	public String addAccrueSource(AccrueSource as,HttpServletRequest request,HttpServletResponse response) throws IOException {
		asm.add(as);
		closeCurrentWinRefreshParentWin(request, response);
		return "redirect:/accrueSourceList";
	}
	
	@RequestMapping(value = {"/updateAccrueSource"},method = RequestMethod.GET)
	    public String update(String id, Model model){
	        AccrueSource as = asm.selectById(id);
	       // System.out.println(as.getAcc_name());
	        model.addAttribute("as",as);
	        return "/accrue/accrueSource_edite";
	    }

	@RequestMapping(value = {"/updateAccrueSource"},method = RequestMethod.POST)
	    public String update(AccrueSource as) {
	          try{
	            asm.update(as);
	            System.out.println("success");
	          }catch(Exception e){
	        	  e.printStackTrace();
	          }
	        return "redirect:/accrueSourceList";
	    }
   
	@RequestMapping(value="/AccrueSourceInfo")
	public @ResponseBody Object info(String id){
		AccrueSource as = asm.selectById(id);
		return as;
	}
	
	protected void closeCurrentWinRefreshParentWin(HttpServletRequest request,HttpServletResponse response) throws IOException {
		PrintWriter out = response.getWriter();
		out.write("<script type=\"text/javascript\" language=\"javascript\">");
		out.write("parent.window.location.reload();");
		out.write("parent.$.fancybox.close();");
		out.write("alert('success');");
		out.write("</script>");
		out.flush();
		out.close();
	}
}
