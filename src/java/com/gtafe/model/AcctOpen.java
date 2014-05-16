package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * Desc: 内部账户开户表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月14日
 * Time: 下午3:37:14
 */
public class AcctOpen {
	   private int id;//                   numeric(8,0)                   identity,
	   private String ope_code; //操作码             char(1)                        null,
	   private String account; //账号              char(21)                       null,
	   private String subject_code; //科目号         char(5)                        null,
	   private String order_code; //顺序号           char(5)                        null,
	   private String account_name; //账户名称         nvarchar(20)                   null,
	   private String count_code; //统计代码           char(16)                       null,
	   private String open_limit; //开户范围           char(10)                       null,
	   private String icon_limit; //币种范围           char(1)                        null,
	   private String allow_deriction; //允许发生方向      char(1)                        null,
	   private String remain_deriction; //余额方向     char(1)                        null,
	   private String account_type; //账户类型         char(1)                        null,
	   private String detail_flag; //明细核算标志          char(1)                        null,
	   private String borrow_code;//借方利率代码          char(4)                        null,
	   private String load_code;// 贷方利率代码           char(4)                        null,
	   private String destroy_flag;//挂销账标志         char(4)                        null,
	   private String flush_type;//销账种类           char(1)                        null,
	   private String flush_limit;//销账期限          char(1)                        null,
	   private String close_limit;//账户关闭期限          char(3)                        null,
	   private String allow_input;//是否允许AI输入          char(1)                        null,
	   private String deriction_flag;//定向账户标志       char(1)                        null,
	   private String public_type;//共用类型          char(1)                        null,
	   private String public_flag;//共用记账标志          char(1)                        null,
	   private String remain_flag;//余额红字标志          char(1)                        null,
	   private String org_code;//机构号             char(6)                        null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date start_time;//启用日期           datetime                       null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date last_time;//最后更新日期            datetime                       null,
	   private String upt_clr;//更新柜员              char(6)                        null,
	   private String use_status;//使用状态           char(1)                        null,
	   private String rec_sts;//记录状态              char(1)                        null
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOpeCode() {
		return ope_code;
	}
	public void setOpeCode(String opeCode) {
		this.ope_code = opeCode;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getSubjectCode() {
		return subject_code;
	}
	public void setSubjectCode(String subjectCode) {
		this.subject_code = subjectCode;
	}
	public String getOrderCode() {
		return order_code;
	}
	public void setOrderCode(String orderCode) {
		this.order_code = orderCode;
	}
	public String getAccountName() {
		return account_name;
	}
	public void setAccountName(String accountName) {
		this.account_name = accountName;
	}
	public String getCountCode() {
		return count_code;
	}
	public void setCountCode(String countCode) {
		this.count_code = countCode;
	}
	public String getOpenLimit() {
		return open_limit;
	}
	public void setOpenLimit(String openLimit) {
		this.open_limit = openLimit;
	}
	public String getIconLimit() {
		return icon_limit;
	}
	public void setIconLimit(String iconLimit) {
		this.icon_limit = iconLimit;
	}
	public String getAllowDeriction() {
		return allow_deriction;
	}
	public void setAllowDeriction(String allowDeriction) {
		this.allow_deriction = allowDeriction;
	}
	public String getRemainDeriction() {
		return remain_deriction;
	}
	public void setRemainDeriction(String remainDeriction) {
		this.remain_deriction = remainDeriction;
	}
	public String getAccountType() {
		return account_type;
	}
	public void setAccountType(String accountType) {
		this.account_type = accountType;
	}
	public String getDetailFlag() {
		return detail_flag;
	}
	public void setDetailFlag(String detailFlag) {
		this.detail_flag = detailFlag;
	}
	public String getBorrowCode() {
		return borrow_code;
	}
	public void setBorrowCode(String borrowCode) {
		this.borrow_code = borrowCode;
	}
	public String getLoadCode() {
		return load_code;
	}
	public void setLoadCode(String loadCode) {
		this.load_code = loadCode;
	}
	public String getDestroyFlag() {
		return destroy_flag;
	}
	public void setDestroyFlag(String destroyFlag) {
		this.destroy_flag = destroyFlag;
	}
	public String getFlushType() {
		return flush_type;
	}
	public void setFlushType(String flushType) {
		this.flush_type = flushType;
	}
	public String getFlushLimit() {
		return flush_limit;
	}
	public void setFlushLimit(String flushLimit) {
		this.flush_limit = flushLimit;
	}
	public String getCloseLimit() {
		return close_limit;
	}
	public void setCloseLimit(String closeLimit) {
		this.close_limit = closeLimit;
	}
	public String getAllowInput() {
		return allow_input;
	}
	public void setAllowInput(String allowInput) {
		this.allow_input = allowInput;
	}
	public String getDerictionFlag() {
		return deriction_flag;
	}
	public void setDerictionFlag(String derictionFlag) {
		this.deriction_flag = derictionFlag;
	}
	public String getPublicType() {
		return public_type;
	}
	public void setPublicType(String publicType) {
		this.public_type = publicType;
	}
	public String getPublicFlag() {
		return public_flag;
	}
	public void setPublicFlag(String publicFlag) {
		this.public_flag = publicFlag;
	}
	public String getRemainFlag() {
		return remain_flag;
	}
	public void setRemainFlag(String remainFlag) {
		this.remain_flag = remainFlag;
	}
	public String getOrgCode() {
		return org_code;
	}
	public void setOrgCode(String orgCode) {
		this.org_code = orgCode;
	}
	public Date getStartTime() {
		return start_time;
	}
	public void setStartTime(Date startTime) {
		this.start_time = startTime;
	}
	public Date getLastTime() {
		return last_time;
	}
	public void setLastTime(Date lastTime) {
		this.last_time = lastTime;
	}
	public String getUptClr() {
		return upt_clr;
	}
	public void setUptClr(String uptClr) {
		this.upt_clr = uptClr;
	}
	public String getUseStatus() {
		return use_status;
	}
	public void setUseStatus(String useStatus) {
		this.use_status = useStatus;
	}
	public String getRecSts() {
		return rec_sts;
	}
	public void setRecSts(String recSts) {
		this.rec_sts = recSts;
	}
	@Override
	public String toString() {
		return "AcctOpen [id=" + id + ", opeCode=" + ope_code + ", account="
				+ account + ", subjectCode=" + subject_code + ", orderCode="
				+ order_code + ", accountName=" + account_name + ", countCode="
				+ count_code + ", openLimit=" + open_limit + ", iconLimit="
				+ icon_limit + ", allowDeriction=" + allow_deriction
				+ ", remainDeriction=" + remain_deriction + ", accountType="
				+ account_type + ", detailFlag=" + detail_flag + ", borrowCode="
				+ borrow_code + ", loadCode=" + load_code + ", destroyFlag="
				+ destroy_flag + ", flushType=" + flush_type + ", flushLimit="
				+ flush_limit + ", closeLimit=" + close_limit + ", allowInput="
				+ allow_input + ", derictionFlag=" + deriction_flag
				+ ", publicType=" + public_type + ", publicFlag=" + public_flag
				+ ", remainFlag=" + remain_flag + ", orgCode=" + org_code
				+ ", startTime=" + start_time + ", lastTime=" + last_time
				+ ", uptClr=" + upt_clr + ", useStatus=" + use_status
				+ ", recSts=" + rec_sts + "]";
	}
	   
	   
}
