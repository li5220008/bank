package com.gtafe.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Desc: 结售汇牌价表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月14日
 * Time: 下午3:59:13
 */
public class ExchangeReceipts {
	   private int id;//                   numeric(8,0)                   identity,
	   private String exchange_type;//兑换类别        char(10)                       null,
	   private String icon_name;//货币名称            char(10)                       null,
	   private String icon_sign;//货币符号            char(3)                        null,
	   private String rate_type;//汇率种类            char(1)                        null,
	   private Double rate;//汇率                 decimal(3,1)                   null,
	   private String rate_flag;//汇率标识            char(1)                        null,
	   private String date_flag;//当天使用标记            char(1)                        null,
	   private String date_upt_flag;//当天修改标记        char(1)                        null,
	   private Date start_time;//启用时间           datetime                       null,
	   private String create_teller;// 建档柜员       char(6)                        null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date create_time;//建档时间          datetime                       null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date last_time;//最后更新日期            datetime                       null,
	   private String udt_clr;//更新柜员              char(6)                        null,
	   private String rec_sts;//记录状态              char(1)                        null
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getExchange_type() {
		return exchange_type;
	}
	public void setExchange_type(String exchange_type) {
		this.exchange_type = exchange_type;
	}
	public String getIcon_name() {
		return icon_name;
	}
	public void setIcon_name(String icon_name) {
		this.icon_name = icon_name;
	}
	public String getIcon_sign() {
		return icon_sign;
	}
	public void setIcon_sign(String icon_sign) {
		this.icon_sign = icon_sign;
	}
	public String getRate_type() {
		return rate_type;
	}
	public void setRate_type(String rate_type) {
		this.rate_type = rate_type;
	}
	public Double getRate() {
		return rate;
	}
	public void setRate(Double rate) {
		this.rate = rate;
	}
	public String getRate_flag() {
		return rate_flag;
	}
	public void setRate_flag(String rate_flag) {
		this.rate_flag = rate_flag;
	}
	public String getDate_flag() {
		return date_flag;
	}
	public void setDate_flag(String date_flag) {
		this.date_flag = date_flag;
	}
	public String getDate_upt_flag() {
		return date_upt_flag;
	}
	public void setDate_upt_flag(String date_upt_flag) {
		this.date_upt_flag = date_upt_flag;
	}
	public Date getStart_time() {
		return start_time;
	}
	public void setStart_time(Date start_time) {
		this.start_time = start_time;
	}
	public String getCreate_teller() {
		return create_teller;
	}
	public void setCreate_teller(String create_teller) {
		this.create_teller = create_teller;
	}
	public Date getCreate_time() {
		return create_time;
	}
	public void setCreate_time(Date create_time) {
		this.create_time = create_time;
	}
	public Date getLast_time() {
		return last_time;
	}
	public void setLast_time(Date last_time) {
		this.last_time = last_time;
	}
	public String getUdt_clr() {
		return udt_clr;
	}
	public void setUdt_clr(String udt_clr) {
		this.udt_clr = udt_clr;
	}
	public String getRec_sts() {
		return rec_sts;
	}
	public void setRec_sts(String rec_sts) {
		this.rec_sts = rec_sts;
	}
	@Override
	public String toString() {
		return "ExchangeReceipts [id=" + id + ", exchange_type=" + exchange_type
				+ ", icon_name=" + icon_name + ", icon_sign=" + icon_sign
				+ ", rate_type=" + rate_type + ", rate=" + rate + ", rate_flag="
				+ rate_flag + ", date_flag=" + date_flag + ", date_upt_flag="
				+ date_upt_flag + ", start_time=" + start_time + ", create_teller="
				+ create_teller + ", create_time=" + create_time + ", last_time="
				+ last_time + ", udt_clr=" + udt_clr + ", rec_sts=" + rec_sts + "]";
	}
	
	
	   
}
