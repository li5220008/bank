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
import com.gtafe.model.TransactionRecord;
import com.gtafe.service.ITransactionRecordService;

@Controller
public class TransactionRecordController {

	@Autowired
	ITransactionRecordService trs;
	@RequestMapping(value="tranRecordList")
	public String list(Model model){
		List<TransactionRecord> list = trs.fetchAll();
		model.addAttribute("list", list);
		return "transactionRecord/list";
	}
	@RequestMapping(value = "/addTranRecord", method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("as", new TransactionRecord());
		return "transactionRecord/add";
	}

	@RequestMapping(value = "/deleteTranRecord")
	public String delete(String id) {
		trs.deleteById(id);;
		return "redirect:/tranRecordList";
	}

	@RequestMapping(value = "/addTranRecord", method = RequestMethod.POST)
	public String add(TransactionRecord as,HttpServletRequest request,HttpServletResponse response) throws IOException {
		trs.add(as);
		closeCurrentWinRefreshParentWin(request, response);
		return "redirect:/tranRecordList";
	}
	
	@RequestMapping(value = {"/updateTranRecord"},method = RequestMethod.GET)
	    public String update(String id, Model model){
	        TransactionRecord sc = trs.selectById(id);
	      //  System.out.println(as.getAcc_name());
	        model.addAttribute("sc",sc);
	        return "/transactionRecord/edite";
	    }

	@RequestMapping(value = {"/updateTranRecord"},method = RequestMethod.POST)
	    public String update(TransactionRecord sc) {
	          try{
	            trs.update(sc);
	            //System.out.println("success");
	          }catch(Exception e){
	        	  e.printStackTrace();
	          }
	        return "redirect:/tranRecordList";
	    }
   
	@RequestMapping(value="/TransRecordInfo")
	public @ResponseBody Object info(String id){
		TransactionRecord as = trs.selectById(id);
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
