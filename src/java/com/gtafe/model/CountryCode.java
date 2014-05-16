package com.gtafe.model;

import java.io.Serializable;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 国家码表模型
 * 
 * @author 唐世朋
 * 
 */
public class CountryCode {

	private int id;// numeric(3) identity,
	private String countryCode;// 国家码 char(3) not null,
	private String conutryName;// 国家名称 nvarchar(8) null,
	private String allowFlag;// 允许货币标志 char(1) null,
	private String currency;// 货币 char(4) null,
	private String rate;// 汇率 char(21) null,
	private Date startTime;// 启用日期 datetime null,
	private Date lastTime;// 最后更新日期 datetime null,
	private String uptTlr;// 更新柜员 char(6) null,
	private String useStatus;// 使用状态 char(1) null,
	private String recSts;// 记录状态 char(1) null
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountryCode() {
		return countryCode;
	}
	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}
	public String getConutryName() {
		return conutryName;
	}
	public void setConutryName(String conutryName) {
		this.conutryName = conutryName;
	}
	public String getAllowFlag() {
		return allowFlag;
	}
	public void setAllowFlag(String allowFlag) {
		this.allowFlag = allowFlag;
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
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getLastTime() {
		return lastTime;
	}
	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}
	public String getUptTlr() {
		return uptTlr;
	}
	public void setUptTlr(String uptTlr) {
		this.uptTlr = uptTlr;
	}
	public String getUseStatus() {
		return useStatus;
	}
	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}
	public String getRecSts() {
		return recSts;
	}
	public void setRecSts(String recSts) {
		this.recSts = recSts;
	}
	@Override
	public String toString() {
		return "CountryCode [id=" + id + ", countryCode=" + countryCode
				+ ", conutryName=" + conutryName + ", allowFlag=" + allowFlag
				+ ", currency=" + currency + ", rate=" + rate + ", startTime="
				+ startTime + ", lastTime=" + lastTime + ", uptTlr=" + uptTlr
				+ ", useStatus=" + useStatus + ", recSts=" + recSts + "]";
	}
	
}
