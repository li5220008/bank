package com.gtafe.model;

import java.util.Date;

/**
 * Desc: 公用码表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月14日
 * Time: 下午4:38:10
 */
public class PublicCode {
	   private int id;//                   numeric(8,0)                   identity,
	   private String publicCode;//代码编号          char(15)                       null,
	   private String publicType;//代码种类          char(2)                        null,
	   private String publicName;//代码名称          nvarchar(25)                   null,
	   private String comment;//注释              text                           null,
	   private String controlMessage;//控制信息      nvarchar(10)                   null,
	   private Date startTime;//启用日期           datetime                       null,
	   private Date lastTime;//最后更新日期            datetime                       null,
	   private String uptTlr;//更新柜员              char(6)                        null,
	   private String useStatus;//使用状态           char(1)                        null,
	   private String recSts;//记录状态              char(1)                        null
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPublicCode() {
		return publicCode;
	}
	public void setPublicCode(String publicCode) {
		this.publicCode = publicCode;
	}
	public String getPublicType() {
		return publicType;
	}
	public void setPublicType(String publicType) {
		this.publicType = publicType;
	}
	public String getPublicName() {
		return publicName;
	}
	public void setPublicName(String publicName) {
		this.publicName = publicName;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getControlMessage() {
		return controlMessage;
	}
	public void setControlMessage(String controlMessage) {
		this.controlMessage = controlMessage;
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
		return "PublicCode [id=" + id + ", publicCode=" + publicCode
				+ ", publicType=" + publicType + ", publicName=" + publicName
				+ ", comment=" + comment + ", controlMessage=" + controlMessage
				+ ", startTime=" + startTime + ", lastTime=" + lastTime
				+ ", uptTlr=" + uptTlr + ", useStatus=" + useStatus
				+ ", recSts=" + recSts + "]";
	}
	   
}
