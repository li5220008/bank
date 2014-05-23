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
import com.gtafe.model.HolidayCode;
import com.gtafe.service.IHolidayCodeService;

@Controller
public class HolidayCodeController  {
  
	@Autowired
	IHolidayCodeService ihc;
	@RequestMapping(value="/holidayCodeList")
	public String list(Model model){
		List<HolidayCode> list =ihc.fetchAll();
		model.addAttribute("list", list);
		return "holidayCode/list";
	}
	
	@RequestMapping(value ="/addHolidayCode", method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("as", new HolidayCode());
		return "holidayCode/add";
	}

	@RequestMapping(value ="/deleteHolidayCode")
	public String delete(String id) {
		ihc.softDeleteById(id);
		return "redirect:/holidayCodeList";
	}

	@RequestMapping(value ="/addHolidayCode", method = RequestMethod.POST)
	public String add(HolidayCode ee,HttpServletRequest request,HttpServletResponse response) throws IOException {
		ihc.add(ee);
		closeCurrentWinRefreshParentWin(request, response);
		return "redirect:/holidayCodeList";
	}
	
	@RequestMapping(value ="/updateHolidayCode",method = RequestMethod.GET)
	    public String update(String id, Model model){
	        HolidayCode hc = ihc.selectById(id);
	        model.addAttribute("hc",hc);
	        return "/holidayCode/edite";
	    }

	@RequestMapping(value ="/updateHolidayCode",method = RequestMethod.POST)
	    public String update(HolidayCode hc) {
	          try{
	            ihc.update(hc);
	            System.out.println("success");
	          }catch(Exception e){
	        	  e.printStackTrace();
	          }
	        return "redirect:/holidayCodeList";
	    }
   
	@RequestMapping(value="/HolidayCodeInfo")
	public @ResponseBody Object info(String id){
		HolidayCode hc = ihc.selectById(id);
		return hc;
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
