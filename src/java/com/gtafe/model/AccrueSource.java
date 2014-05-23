package com.gtafe.model;

import java.math.BigDecimal;

/*
 * 计提来源
 * @author chuan
 */
public class AccrueSource {

	private BigDecimal id;
	private String ope_code;// 操作吗
	private String org_code;// 机构号
	private String acc_type;// 计提种类
	private String acc_account;// 来源账号
	private String acc_name;// 计提名称
	private String bak_account;// 备抵账户
	private String bak_source;// 备抵来源
	private String acc_percent;// 计提比例
	private String ope_flag;// 处理标志
	private String acc_date;// 记账日期
	private String source_code;// 来源账号
	private String source_comment;// 来源说明
	private String opt_type;// 运算方式
	private String count_type;// 计算方式
	private String source_class;// 来源种类
	private String coin_type;// 币种
	private String start_time;// 启用日期
	private String last_time;// 最后更新日期
	private String UDT_CLR;// 更新柜员
	private String use_status;// 使用状态
	private String REC_STS; // record status

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

	public String getAcc_account() {
		return acc_account;
	}

	public void setAcc_account(String acc_account) {
		this.acc_account = acc_account;
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

	public String getAcc_date() {
		return acc_date;
	}

	public void setAcc_date(String acc_date) {
		this.acc_date = acc_date;
	}

	public String getSource_code() {
		return source_code;
	}

	public void setSource_code(String source_code) {
		this.source_code = source_code;
	}

	public String getSource_comment() {
		return source_comment;
	}

	public void setSource_comment(String source_comment) {
		this.source_comment = source_comment;
	}

	public String getOpt_type() {
		return opt_type;
	}

	public void setOpt_type(String opt_type) {
		this.opt_type = opt_type;
	}

	public String getCount_type() {
		return count_type;
	}

	public void setCount_type(String count_type) {
		this.count_type = count_type;
	}

	public String getSource_class() {
		return source_class;
	}

	public void setSource_class(String source_class) {
		this.source_class = source_class;
	}

	public String getCoin_type() {
		return coin_type;
	}

	public void setCoin_type(String coin_type) {
		this.coin_type = coin_type;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getLast_time() {
		return last_time;
	}

	public void setLast_time(String last_time) {
		this.last_time = last_time;
	}

	public String getUPT_CLR() {
		return UDT_CLR;
	}

	public void setUPT_CLR(String UDT_CLR) {
		this.UDT_CLR = UDT_CLR;
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
