package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;



/**
 * 银行卡实体类
 * @author li.wan
 *
 */
public class BankCar {
      private Integer id;//主键ID
      private Character usage;//功能
      private Character car_type;//卡种
      private Character car_media;//卡介质
      private Character car_grade;//卡别
      private Character car_class;//卡类
      private String car_name;//银行卡名称
      private Character car_status;//有效状态
      private Character credit_grade;//信用等级
      private Integer year_fee;//年费
      private Integer attached_num;//附属卡张数
      private String attached_code;//附属凭证代码
      @DateTimeFormat(pattern="yyyy-MM-dd")
      private Date start_time;//启用日期
      @DateTimeFormat(pattern="yyyy-MM-dd")
      private Date upt_dat;//最后更新日期
      private String upt_tlr;//更新柜员
      private Character use_sts;//使用状态
      private Character rec_sts;//记录状态
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Character getUsage() {
		return usage;
	}
	public void setUsage(Character usage) {
		this.usage = usage;
	}

	public Character getCar_type() {
		return car_type;
	}
	public void setCar_type(Character car_type) {
		this.car_type = car_type;
	}
	public Character getCar_media() {
		return car_media;
	}
	public void setCar_media(Character car_media) {
		this.car_media = car_media;
	}
	public Character getCar_grade() {
		return car_grade;
	}
	public void setCar_grade(Character car_grade) {
		this.car_grade = car_grade;
	}
	public Character getCar_class() {
		return car_class;
	}
	public void setCar_class(Character car_class) {
		this.car_class = car_class;
	}
	public String getCar_name() {
		return car_name;
	}
	public void setCar_name(String car_name) {
		this.car_name = car_name;
	}
	public Character getCar_status() {
		return car_status;
	}
	public void setCar_status(Character car_status) {
		this.car_status = car_status;
	}
	public Character getCredit_grade() {
		return credit_grade;
	}
	public void setCredit_grade(Character credit_grade) {
		this.credit_grade = credit_grade;
	}
	public Integer getYear_fee() {
		return year_fee;
	}
	public void setYear_fee(Integer year_fee) {
		this.year_fee = year_fee;
	}
	public Integer getAttached_num() {
		return attached_num;
	}
	public void setAttached_num(Integer attached_num) {
		this.attached_num = attached_num;
	}
	public String getAttached_code() {
		return attached_code;
	}
	public void setAttached_code(String attached_code) {
		this.attached_code = attached_code;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
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
	public Character getUse_sts() {
		return use_sts;
	}
	public void setUse_sts(Character use_sts) {
		this.use_sts = use_sts;
	}
	public Character getRec_sts() {
		return rec_sts;
	}
	public void setRec_sts(Character rec_sts) {
		this.rec_sts = rec_sts;
	}
      
      
      
      
}
