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

import com.gtafe.model.Pifapp;
import com.gtafe.service.IPifappService;

/**
 * 应用码表控制层
 * 
 * @author 唐世朋
 * 
 */
@Controller
@RequestMapping(value = "/pifapp")
public class PifappController {

	@Autowired
	IPifappService pifappService;
	
	
	@RequestMapping
	public String findAll(HttpServletRequest request,
			HttpServletResponse response, Model model) {
		List<Pifapp> pifappList = pifappService.findAll();
		model.addAttribute("pifappList", pifappList);

		String msg = (String) request.getSession().getAttribute("result");
		model.addAttribute("result", msg);
		request.getSession().removeAttribute("result");
		return "pifapp/list";
	}


	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String add() {
		return "pifapp/add";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(HttpServletRequest request, HttpServletResponse response,
			Pifapp pifapp) throws IOException {
		String msg = null;
		if (pifappService.add(pifapp)) {
			System.out.println("保存成功！");
			msg = "保存成功";
		} else {
			System.out.println("保存失败");
			msg = "保存失败";
		}
		request.getSession().setAttribute("result", msg);
		return "redirect:/pifapp";
	}



	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable String id, Model model) {
		Pifapp pifapp = pifappService.selectByID(id);
		model.addAttribute("pifapp", pifapp);
		return "pifapp/edit";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String updatePifccy(HttpServletRequest request,
			HttpServletResponse response, Pifapp pifapp) throws IOException {
		String msg = null;
		if (pifappService.update(pifapp)) {
			msg = "更新成功！";
		} else {
			msg = "更新失败！";
		}
		request.getSession().setAttribute("result", msg);
		return "redirect:/pifapp";
	}
    
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(HttpServletRequest request,
			HttpServletResponse response, @PathVariable String id)
			throws IOException {
		String msg = null;
		if (pifappService.realDeleteById(id)) {
			System.out.println("删除成功！");
			msg = "删除成功";
		} else {
			System.out.println("删除失败");
			msg = "删除失败";
		}
		request.getSession().setAttribute("result", msg);
		return "redirect:/pifapp";
	}
}
