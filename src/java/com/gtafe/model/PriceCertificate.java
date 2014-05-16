package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 有价单证实体类
 * @author li.wan
 *
 */
public class PriceCertificate {
     private Integer id;//对应主键
     private Character usage;//功能
     private String price_code;//单证代码
     private String price_name;//单证名称
     private String coin;//币种
     private String timelimit;//期限
     private String price_type;//单证种类
     private Character is_contrl;//是否控号
     private Character count_unit;//计数单位
     private String unit_num;//单位份数
     private Character flush_flag;//抹账标志
     private Character valid_flag;//有效标志
     @DateTimeFormat(pattern="yyyy-MM-dd")
     private Date start_time;//启用日期
     @DateTimeFormat(pattern="yyyy-MM-dd")
     private Date last_time;//最后更新日期
     private String udt_clr;//更新柜员
     private Character use_status;//使用状态
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
	public String getPrice_code() {
		return price_code;
	}
	public void setPrice_code(String price_code) {
		this.price_code = price_code;
	}
	public String getPrice_name() {
		return price_name;
	}
	public void setPrice_name(String price_name) {
		this.price_name = price_name;
	}
	public String getCoin() {
		return coin;
	}
	public void setCoin(String coin) {
		this.coin = coin;
	}
	public String getTimelimit() {
		return timelimit;
	}
	public void setTimelimit(String timelimit) {
		this.timelimit = timelimit;
	}
	public String getPrice_type() {
		return price_type;
	}
	public void setPrice_type(String price_type) {
		this.price_type = price_type;
	}
	public Character getIs_contrl() {
		return is_contrl;
	}
	public void setIs_contrl(Character is_contrl) {
		this.is_contrl = is_contrl;
	}
	public Character getCount_unit() {
		return count_unit;
	}
	public void setCount_unit(Character count_unit) {
		this.count_unit = count_unit;
	}
	public String getUnit_num() {
		return unit_num;
	}
	public void setUnit_num(String unit_num) {
		this.unit_num = unit_num;
	}
	public Character getFlush_flag() {
		return flush_flag;
	}
	public void setFlush_flag(Character flush_flag) {
		this.flush_flag = flush_flag;
	}
	public Character getValid_flag() {
		return valid_flag;
	}
	public void setValid_flag(Character valid_flag) {
		this.valid_flag = valid_flag;
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
	public String getUdt_clr() {
		return udt_clr;
	}
	public void setUdt_clr(String udt_clr) {
		this.udt_clr = udt_clr;
	}
	public Character getUse_status() {
		return use_status;
	}
	public void setUse_status(Character use_status) {
		this.use_status = use_status;
	}
	public Character getRec_sts() {
		return rec_sts;
	}
	public void setRec_sts(Character rec_sts) {
		this.rec_sts = rec_sts;
	}

     
}
