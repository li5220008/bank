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

import com.gtafe.model.Piftrx;
import com.gtafe.service.IPiftrxService;

/**
 *交易码表控制层
 * @author 唐世朋
 *
 */
@Controller
@RequestMapping(value="/piftrx")
public class PiftrxController {
    
	@Autowired
	IPiftrxService piftrxService;
	
	
	
	@RequestMapping
	public String findAll(HttpServletRequest request,
			HttpServletResponse response, Model model) {
		List<Piftrx> piftrxList = piftrxService.findAll();
		model.addAttribute("piftrxList", piftrxList);

		String msg = (String) request.getSession().getAttribute("result");
		model.addAttribute("result", msg);
		request.getSession().removeAttribute("result");
		return "piftrx/list";
	}


	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add() {
		return "piftrx/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(HttpServletRequest request, HttpServletResponse response,
			Piftrx piftrx) throws IOException {
		String msg = null;
		if (piftrxService.add(piftrx)) {
			System.out.println("保存成功！");
			msg = "保存成功";
		} else {
			System.out.println("保存失败");
			msg = "保存失败";
		}
		request.getSession().setAttribute("result", msg);
		return "redirect:/piftrx";
	}



	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable String id, Model model) {
		Piftrx piftrx = piftrxService.selectByID(id);		
		model.addAttribute("piftrx", piftrx);
		return "piftrx/edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String updatePifccy(HttpServletRequest request,
			HttpServletResponse response, Piftrx piftrx) throws IOException {
		String msg = null;
		if (piftrxService.update(piftrx)) {
			msg = "更新成功！";
		} else {
			msg = "更新失败！";
		}
		request.getSession().setAttribute("result", msg);
		return "redirect:/piftrx";
	}
    
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(HttpServletRequest request,
			HttpServletResponse response, @PathVariable String id)
			throws IOException {
		String msg = null;
		if (piftrxService.realDeleteById(id)) {
			System.out.println("删除成功！");
			msg = "删除成功";
		} else {
			System.out.println("删除失败");
			msg = "删除失败";
		}
		request.getSession().setAttribute("result", msg);
		return "redirect:/piftrx";
	}
}
