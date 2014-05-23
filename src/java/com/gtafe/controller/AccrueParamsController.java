package com.gtafe.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.gtafe.model.AccrueParams;
import com.gtafe.service.IAccrueParamsService;
import com.gtafe.util.MathUtil;

@Controller
public class AccrueParamsController {

	@Autowired
	IAccrueParamsService apm;
	@RequestMapping("/accrueParamsList")
	public String listAll(Model model) {
		List<AccrueParams> l = apm.fetchAll();
		model.addAttribute("list", l);
		return "accrue/accrueParames_list";
	}
	
	@RequestMapping(value = "/addAccrueParams", method = RequestMethod.GET)
	public String addAccrueSource(Model model) {
		model.addAttribute("as", new AccrueParams());
		return "accrue/accrueParams_add";
	}

	@RequestMapping(value = "/deleteAccureParams")
	public String deleteUser(String id) {
		apm.softDeleteById(id);;
		return "redirect:/accrueParamsList";
	}

	@RequestMapping(value = "/addAccrueParams", method = RequestMethod.POST)
	public String addAccrueSource(AccrueParams ap) {
		apm.add(ap);
		return "redirect:/accrueParamsList";
	}
	
	
	@RequestMapping(value = {"/updateAccrueParams"},method = RequestMethod.GET)
    public String update(String id, Model model){
        AccrueParams as = apm.selectById(id);
        model.addAttribute("as",as);
        return "/accrue/accrueParams_edite";
    }

@RequestMapping(value = {"/updateAccrueParams"},method = RequestMethod.POST)
    public String update(AccrueParams as) {
          try{
        	  apm.update(as);
            System.out.println("success");
          }catch(Exception e){
        	  e.printStackTrace();
          }
        return "redirect:/accrueParamsList";
    }

@RequestMapping(value="/AccrueParamsInfo")
public @ResponseBody Object info(String id){
	AccrueParams as = apm.selectById(id);
	return as;
}
	
}
