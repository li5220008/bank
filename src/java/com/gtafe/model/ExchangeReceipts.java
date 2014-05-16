package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * Desc: 结售汇牌价表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月14日
 * Time: 下午3:59:13
 */
public class ExchangeReceipts {
	   private int id;//                   numeric(8,0)                   identity,
	   private String exchangeType;//兑换类别        char(10)                       null,
	   private String iconName;//货币名称            char(10)                       null,
	   private String iconSign;//货币符号            char(3)                        null,
	   private String rateType;//汇率种类            char(1)                        null,
	   private Double rate;//汇率                 decimal(3,1)                   null,
	   private String rateFlag;//汇率标识            char(1)                        null,
	   private String dateFlag;//当天使用标记            char(1)                        null,
	   private String dateUptFlag;//当天修改标记        char(1)                        null,
	   private Date startTime;//启用时间           datetime                       null,
	   private String createTeller;// 建档柜员       char(6)                        null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date createTime;//建档时间          datetime                       null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date lastTime;//最后更新日期            datetime                       null,
	   private String udtClr;//更新柜员              char(6)                        null,
	   private String recSts;//记录状态              char(1)                        null
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getExchangeType() {
		return exchangeType;
	}
	public void setExchangeType(String exchangeType) {
		this.exchangeType = exchangeType;
	}
	public String getIconName() {
		return iconName;
	}
	public void setIconName(String iconName) {
		this.iconName = iconName;
	}
	public String getIconSign() {
		return iconSign;
	}
	public void setIconSign(String iconSign) {
		this.iconSign = iconSign;
	}
	public String getRateType() {
		return rateType;
	}
	public void setRateType(String rateType) {
		this.rateType = rateType;
	}
	public Double getRate() {
		return rate;
	}
	public void setRate(Double rate) {
		this.rate = rate;
	}
	public String getRateFlag() {
		return rateFlag;
	}
	public void setRateFlag(String rateFlag) {
		this.rateFlag = rateFlag;
	}
	public String getDateFlag() {
		return dateFlag;
	}
	public void setDateFlag(String dateFlag) {
		this.dateFlag = dateFlag;
	}
	public String getDateUptFlag() {
		return dateUptFlag;
	}
	public void setDateUptFlag(String dateUptFlag) {
		this.dateUptFlag = dateUptFlag;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public String getCreateTeller() {
		return createTeller;
	}
	public void setCreateTeller(String createTeller) {
		this.createTeller = createTeller;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getLastTime() {
		return lastTime;
	}
	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}
	public String getUdtClr() {
		return udtClr;
	}
	public void setUdtClr(String udtClr) {
		this.udtClr = udtClr;
	}
	public String getRecSts() {
		return recSts;
	}
	public void setRecSts(String recSts) {
		this.recSts = recSts;
	}
	@Override
	public String toString() {
		return "ExchangeReceipts [id=" + id + ", exchangeType=" + exchangeType
				+ ", iconName=" + iconName + ", iconSign=" + iconSign
				+ ", rateType=" + rateType + ", rate=" + rate + ", rateFlag="
				+ rateFlag + ", dateFlag=" + dateFlag + ", dateUptFlag="
				+ dateUptFlag + ", startTime=" + startTime + ", createTeller="
				+ createTeller + ", createTime=" + createTime + ", lastTime="
				+ lastTime + ", udtClr=" + udtClr + ", recSts=" + recSts + "]";
	}
	
	
	   
}
