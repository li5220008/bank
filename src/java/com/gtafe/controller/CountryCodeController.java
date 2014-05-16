package com.gtafe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.gtafe.model.CountryCode;
import com.gtafe.service.ICountryCodeService;

/**
 * 国家码表控制层
 * @author 唐世朋
 *
 */
@Controller
@RequestMapping(value="/CountryCode")
public class CountryCodeController {
    
	@Autowired
	ICountryCodeService srevice;
	
	/**
	 * 查询全部信息
	 * @return
	 */
	@RequestMapping("/list")
	public String findAll(Model model){
		List<CountryCode> CountryCodeList = srevice.fetchAll();
		model.addAttribute("CountryCodeList", CountryCodeList);
		return "tsp/CountryCode_list";
	}
	
	/**
	 * 删除信息
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Integer id){
		srevice.softDeleteById(id);
		return "redirect:/CountryCode/list";
		
	}
	
	/**
	 * 根据ID获得需要的对象
	 * @param id
	 * @return
	 */
	@RequestMapping("/edit")
	public String get(CountryCode country,Model model,Integer id){
		country = srevice.selectById(id);
		model.addAttribute("country", country);
		return "tsp/CountryCode_edit";
	}
	
	/**
	 * 修改对象
	 * @return
	 */
	@RequestMapping("/update")
	public String update(CountryCode country,BindingResult br){
		if(br.hasErrors()){
			//如果修改失败直接跳转到CountryCode_edit.jsp视图
			return "tsp/CountryCode_edit";
		}
		srevice.update(country);
		return "redirect:/CountryCode/list";
		
	}
	
	/**
	 * 跳转到添加页面
	 * @return
	 */
	@RequestMapping(value="/addition",method=RequestMethod.GET)
	public String addition(){
		
		return "tsp/CountryCode_add";
	}
	
	/**
	 * 添加对象
	 * @return
	 */
	@RequestMapping("/add")
	public String add(CountryCode country,BindingResult br,Model model){
		if(br.hasErrors()){
			//如果添加失败直接跳转到add.jsp视图
			model.addAttribute("error", "添加失败");
			return "/CountryCode_add";
		}
		srevice.add(country);
		return "redirect:/CountryCode/list";
	}
}
