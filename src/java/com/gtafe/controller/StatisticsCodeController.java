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
import com.gtafe.model.StatisticsCode;
import com.gtafe.service.IStatisticsCodeService;

@Controller
public class StatisticsCodeController {
   
@Autowired
 private IStatisticsCodeService statisticsCodeService;
	@RequestMapping(value="/staCodeList")
	public String list(Model model){
		List<StatisticsCode> list = statisticsCodeService.fetchAll();
		model.addAttribute("list", list);
		return "statCode/list";
	}
	@RequestMapping(value = "/addStatCode", method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("as", new StatisticsCode());
		return "statCode/add";
	}

	@RequestMapping(value = "/deleteStatCode")
	public String delete(String id) {
		statisticsCodeService.softDeleteById(id);;
		return "redirect:/staCodeList";
	}

	@RequestMapping(value = "/addStatCode", method = RequestMethod.POST)
	public String add(StatisticsCode as,HttpServletRequest request,HttpServletResponse response) throws IOException {
		statisticsCodeService.add(as);
		closeCurrentWinRefreshParentWin(request, response);
		return "redirect:/staCodeList";
	} 
	
	@RequestMapping(value = {"/updateStatCode"},method = RequestMethod.GET)
	    public String update(String id, Model model){
	        StatisticsCode sc = statisticsCodeService.selectById(id);
	      //  System.out.println(as.getAcc_name());
	        model.addAttribute("sc",sc);
	        return "/statCode/edite";
	    }

	@RequestMapping(value = {"/updateStatCode"},method = RequestMethod.POST)
	    public String update(StatisticsCode sc) {
	          try{
	            statisticsCodeService.update(sc);
	            //System.out.println("success");
	          }catch(Exception e){
	        	  e.printStackTrace();
	          }
	        return "redirect:/staCodeList";
	    }
   
	@RequestMapping(value="/StatCodeInfo")
	public @ResponseBody Object info(String id){
		StatisticsCode as = statisticsCodeService.selectById(id);
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
