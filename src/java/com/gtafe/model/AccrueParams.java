package com.gtafe.model;

import java.math.BigDecimal;

/*
 * @author chuan
 * 计提参数
 */
public class AccrueParams {

	private BigDecimal id;
	private String ope_code;// 操作码
	private String org_code;// 机构号
	private String acc_type;// 计提种类
	private String acc_name;// 计提名称
	private String bak_account;// bake
	private String bak_source;// 备抵来源
	private String acc_percent;// 计提比例
	private String ope_flag;// 处理标志
	private String count_date;// 记账日期
	private String start_date;// 启用日期
	private String last_date;// 最后更新日期
	private String UPT_CLR;// 更新柜员
	private String use_status;// 使用状态
	private String REC_STS;// 记录状态

	public BigDecimal getId() {
		return id;
	}

	public void setId(BigDecimal id) {
		this.id = id;
	}

	public String getOpe_code() {
		return ope_code;
	}

	public void setOpe_code(String ope_code) {
		this.ope_code = ope_code;
	}

	public String getOrg_code() {
		return org_code;
	}

	public void setOrg_code(String org_code) {
		this.org_code = org_code;
	}

	public String getAcc_type() {
		return acc_type;
	}

	public void setAcc_type(String acc_type) {
		this.acc_type = acc_type;
	}

	public String getAcc_name() {
		return acc_name;
	}

	public void setAcc_name(String acc_name) {
		this.acc_name = acc_name;
	}

	public String getBak_account() {
		return bak_account;
	}

	public void setBak_account(String bak_account) {
		this.bak_account = bak_account;
	}

	public String getBak_source() {
		return bak_source;
	}

	public void setBak_source(String bak_source) {
		this.bak_source = bak_source;
	}

	public String getAcc_percent() {
		return acc_percent;
	}

	public void setAcc_percent(String acc_percent) {
		this.acc_percent = acc_percent;
	}

	public String getOpe_flag() {
		return ope_flag;
	}

	public void setOpe_flag(String ope_flag) {
		this.ope_flag = ope_flag;
	}

	public String getCount_date() {
		return count_date;
	}

	public void setCount_date(String count_date) {
		this.count_date = count_date;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getLast_date() {
		return last_date;
	}

	public void setLast_date(String last_date) {
		this.last_date = last_date;
	}

	public String getUPT_CLR() {
		return UPT_CLR;
	}

	public void setUPT_CLR(String uPT_CLR) {
		UPT_CLR = uPT_CLR;
	}

	public String getUse_status() {
		return use_status;
	}

	public void setUse_status(String use_status) {
		this.use_status = use_status;
	}

	public String getREC_STS() {
		return REC_STS;
	}

	public void setREC_STS(String rEC_STS) {
		REC_STS = rEC_STS;
	}

}
