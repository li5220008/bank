package com.gtafe.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * 国家码表模型
 * 
 * @author 唐世朋
 * 
 */
public class CountryCode {

	private int id;// numeric(3) identity,
	private String country_code;// 国家码 char(3) not null,
	private String country_name;// 国家名称 nvarchar(8) null,
	private String allow_flag;// 允许货币标志 char(1) null,
	private String currency;// 货币 char(4) null,
	private String rate;// 汇率 char(21) null,
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date start_time;// 启用日期 datetime null,
    @DateTimeFormat(pattern="yyyy-MM-dd")
	private Date last_time;// 最后更新日期 datetime null,
	private String upt_tlr;// 更新柜员 char(6) null,
	private String use_status;// 使用状态 char(1) null,
	private String rec_sts;// 记录状态 char(1) null
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountry_code() {
		return country_code;
	}
	public void setCountry_code(String country_code) {
		this.country_code = country_code;
	}
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public String getAllow_flag() {
		return allow_flag;
	}
	public void setAllow_flag(String allow_flag) {
		this.allow_flag = allow_flag;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public Date getLast_time() {
		return last_time;
	}
	public void setLast_time(Date last_time) {
		this.last_time = last_time;
	}
	public String getUpt_tlr() {
		return upt_tlr;
	}
	public void setUpt_tlr(String upt_tlr) {
		this.upt_tlr = upt_tlr;
	}
	public String getUse_status() {
		return use_status;
	}
	public void setUse_status(String use_status) {
		this.use_status = use_status;
	}
	public String getRec_sts() {
		return rec_sts;
	}
	public void setRec_sts(String rec_sts) {
		this.rec_sts = rec_sts;
	}
	@Override
	public String toString() {
		return "CountryCode [id=" + id + ", country_code=" + country_code
				+ ", country_name=" + country_name + ", allow_flag=" + allow_flag
				+ ", currency=" + currency + ", rate=" + rate + ", start_time="
				+ start_time + ", last_time=" + last_time + ", upt_tlr=" + upt_tlr
				+ ", use_status=" + use_status + ", rec_sts=" + rec_sts + "]";
	}
}
