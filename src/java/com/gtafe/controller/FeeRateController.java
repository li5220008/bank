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
import com.gtafe.model.FeeRate;
import com.gtafe.service.IFeeRateService;


@Controller
public class FeeRateController {
	@Autowired
  private IFeeRateService psi;
 
	@RequestMapping(value="/feeRateList")
	public String findAll(Model model){
		List<FeeRate> pf = psi.findAll();
		model.addAttribute("list", pf);
		return "feeRate/list";
	} 
	
	@RequestMapping(value ="/addFeeRate", method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("as", new FeeRate());
		return "feeRate/add";
	}

	@RequestMapping(value ="/deleteFeeRate")
	public String delete(String id) {
		psi.deleteFeeRate(id);
		return "redirect:/feeRateList";
	}

	@RequestMapping(value ="/addFeeRate", method = RequestMethod.POST)
	public String add(FeeRate ee,HttpServletRequest request,HttpServletResponse response) throws IOException {
		psi.addFeeRate(ee);
		closeCurrentWinRefreshParentWin(request, response);
		return "redirect:/feeRateList";
	}
	
	@RequestMapping(value ="/updateFeeRate",method = RequestMethod.GET)
	    public String update(String id, Model model){
		FeeRate hc = psi.selectFeeRateByID(id);
	        model.addAttribute("hc",hc);
	        return "/feeRate/edite";
	    }

	@RequestMapping(value ="/updateFeeRate",method = RequestMethod.POST)
	    public String update(FeeRate hc) {
	          try{
	            psi.update(hc);;
	            //System.out.println("success");
	          }catch(Exception e){
	        	  e.printStackTrace();
	          }
	        return "redirect:/feeRateList";
	    }
   
	@RequestMapping(value="/feeRateInfo")
	public @ResponseBody Object info(String id){
		FeeRate hc = psi.selectFeeRateByID(id);
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
