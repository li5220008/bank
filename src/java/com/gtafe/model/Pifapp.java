package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 应用码表实体
 * @author 唐世朋
 *
 */
public class Pifapp {	
	private String  app_cde;//应用码(主键)
	private String app_snm; //应用简称
	private String  app_nam;//应用描述

	private String app_idt;  //应用符
	
	private String app_typ;  //应用类型
	
	private String app_sts; //应用可用状态
	
	private String str_ext; //应用启动出口
	
	private String dwn_ext; //应用关闭出口
	
	private String rst_ext;  //应用重启动出口
	
	private String app_cal;  //应用所用日历
	
	private String run_mod;  //应用可活动的系统模式
	
	private String run_hol; //应用可否在假期中启动
	
	//实现日期的格式化/解析
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date upt_dat;  //最后更新日期
	
	private String upt_tlr;//更新柜员
	
	private String rec_sts;  //记录状态

	
	
	public String getApp_snm() {
		return app_snm;
	}

	public void setApp_snm(String app_snm) {
		this.app_snm = app_snm;
	}

	public String getApp_cde() {
		return app_cde;
	}

	public void setApp_cde(String app_cde) {
		this.app_cde = app_cde;
	}


	public String getApp_nam() {
		return app_nam;
	}

	public void setApp_nam(String app_nam) {
		this.app_nam = app_nam;
	}

	public String getApp_typ() {
		return app_typ;
	}

	public void setApp_typ(String app_typ) {
		this.app_typ = app_typ;
	}

	public String getApp_sts() {
		return app_sts;
	}

	public void setApp_sts(String app_sts) {
		this.app_sts = app_sts;
	}

	public String getStr_ext() {
		return str_ext;
	}

	public void setStr_ext(String str_ext) {
		this.str_ext = str_ext;
	}

	public String getDwn_ext() {
		return dwn_ext;
	}

	public void setDwn_ext(String dwn_ext) {
		this.dwn_ext = dwn_ext;
	}

	public String getRst_ext() {
		return rst_ext;
	}

	public void setRst_ext(String rst_ext) {
		this.rst_ext = rst_ext;
	}

	public String getApp_cal() {
		return app_cal;
	}

	public void setApp_cal(String app_cal) {
		this.app_cal = app_cal;
	}

	public String getRun_mod() {
		return run_mod;
	}

	public void setRun_mod(String run_mod) {
		this.run_mod = run_mod;
	}

	public String getRun_hol() {
		return run_hol;
	}

	public void setRun_hol(String run_hol) {
		this.run_hol = run_hol;
	}

	public Date getUpt_dat() {
		return upt_dat;
	}

	public void setUpt_dat(Date upt_dat) {
		this.upt_dat = upt_dat;
	}

	public String getUpt_tlr() {
		return upt_tlr;
	}

	public void setUpt_tlr(String upt_tlr) {
		this.upt_tlr = upt_tlr;
	}

	public String getRec_sts() {
		return rec_sts;
	}

	public void setRec_sts(String rec_sts) {
		this.rec_sts = rec_sts;
	}

	public String getApp_idt() {
		return app_idt;
	}

	public void setApp_idt(String app_idt) {
		this.app_idt = app_idt;
	}
}
