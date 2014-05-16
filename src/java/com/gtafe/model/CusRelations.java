package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 客户关系表
 * @author li.wan
 *
 */
public class CusRelations {
     private int id;//主键
     private String usage;//功能
     private String cus_code;//客户号
     private String cus_name;//客户名称
     private String other_cus_name;//对方客户名称
     private String other_cus_code;//对方客户号
     private Character certificate;//证件种类
     private String certificate_code;//证件号码
     private String cus_address;//客户地址
     private String cus_phone;//客户电话
     private String relp_code;//关系代码
     @DateTimeFormat(pattern="yyyy-MM-dd")
     private Date start_code;//启用日期
     @DateTimeFormat(pattern="yyyy-MM-dd")
     private Date udt_dat;//最后更新日期
     private String udt_clr;//更新柜员
     private Character use_status;//使用状态
     private Character rec_sts;//记录状态
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsage() {
		return usage;
	}
	public void setUsage(String usage) {
		this.usage = usage;
	}
	public String getCus_code() {
		return cus_code;
	}
	public void setCus_code(String cus_code) {
		this.cus_code = cus_code;
	}
	public String getCus_name() {
		return cus_name;
	}
	public void setCus_name(String cus_name) {
		this.cus_name = cus_name;
	}
	public String getOther_cus_name() {
		return other_cus_name;
	}
	public void setOther_cus_name(String other_cus_name) {
		this.other_cus_name = other_cus_name;
	}
	public String getOther_cus_code() {
		return other_cus_code;
	}
	public void setOther_cus_code(String other_cus_code) {
		this.other_cus_code = other_cus_code;
	}
	public Character getCertificate() {
		return certificate;
	}
	public void setCertificate(Character certificate) {
		this.certificate = certificate;
	}
	public String getCertificate_code() {
		return certificate_code;
	}
	public void setCertificate_code(String certificate_code) {
		this.certificate_code = certificate_code;
	}
	public String getCus_address() {
		return cus_address;
	}
	public void setCus_address(String cus_address) {
		this.cus_address = cus_address;
	}
	public String getCus_phone() {
		return cus_phone;
	}
	public void setCus_phone(String cus_phone) {
		this.cus_phone = cus_phone;
	}
	public String getRelp_code() {
		return relp_code;
	}
	public void setRelp_code(String relp_code) {
		this.relp_code = relp_code;
	}
	public Date getStart_code() {
		return start_code;
	}
	public void setStart_code(Date start_code) {
		this.start_code = start_code;
	}
	public Date getUdt_dat() {
		return udt_dat;
	}
	public void setUdt_dat(Date udt_dat) {
		this.udt_dat = udt_dat;
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
