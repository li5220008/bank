package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * Desc: 内部账户控制表
 * User: weiguili(li5220008@gmail.com)
 * Date: 14-5-5
 * Time: 上午11:01
 */
public class AcctControl {
	   private int id;//                   numeric(8,0)                   identity,
	   private String ope_code;//操作码             char(1)                        null,
	   private String org_code;//机构号             char(6)                        null,
	   private String subject_code;//科目号         char(5)                        null,
	   private String order_code;//顺序号           char(5)                        null,
	   private String account_name;//账户名称         nvarchar(10)                   null,
	   private String count_code;//统计代码           char(16)                       null,
	   private String account_limit;//开户范围        char(10)                       null,
	   private String icon_limit;//货币范围           char(1)                        null,
	   private String detail_code;//细目号          char(3)                        null,
	   private String allow_direction;//允许发生方向      char(1)                        null,
	   private String remaining_direction;//余额方向  char(1)                        null,
	   private String account_type;//账户类型         char(1)                        null,
	   private String detail_flag;//明细核算标志          char(1)                        null,
	   private String borrow_code;//借方利率代码          char(4)                        null,
	   private String loan_code;//贷方利率代码            char(4)                        null,
	   private String destroy_type;//销账类别         char(1)                        null,
	   private String flush_type;//销账种类           char(1)                        null,
	   private String hand_up_limit;//挂账期限        char(3)                        null,
	   private String close_limit;//账户关闭期限          char(3)                        null,
	   private String isallowA;//是否允许AI输入             char(1)                        null,
	   private String directional_flag;//定向账户标志     char(1)                        null,
	   private String public_type;//共用类型          char(1)                        null,
	   private String public_count_type;//共用记账标志    char(1)                        null,
	   private String remain_flag;//余额红字标志          char(1)                        null,
	   private String car_flag;//卡片账标志             char(1)                        null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date start_time;//启用日期          datetime                       null,
	   @DateTimeFormat(pattern = "yyyy-MM-dd")
	   private Date last_time;//最后更新日期            datetime                       null,
	   private String udt_clr;//更新柜员              char(6)                        null,
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
	public String getOrgCode() {
		return org_code;
	}
	public void setOrgCode(String orgCode) {
		this.org_code = orgCode;
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
	public String getAccountLimit() {
		return account_limit;
	}
	public void setAccountLimit(String accountLimit) {
		this.account_limit = accountLimit;
	}
	public String getIconLimit() {
		return icon_limit;
	}
	public void setIconLimit(String iconLimit) {
		this.icon_limit = iconLimit;
	}
	public String getDetailCode() {
		return detail_code;
	}
	public void setDetailCode(String detailCode) {
		this.detail_code = detailCode;
	}
	public String getAllowDirection() {
		return allow_direction;
	}
	public void setAllowDirection(String allowDirection) {
		this.allow_direction = allowDirection;
	}
	public String getRemainingDirection() {
		return remaining_direction;
	}
	public void setRemainingDirection(String remainingDirection) {
		this.remaining_direction = remainingDirection;
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
	public String getLoanCode() {
		return loan_code;
	}
	public void setLoanCode(String loanCode) {
		this.loan_code = loanCode;
	}
	public String getDestroyType() {
		return destroy_type;
	}
	public void setDestroyType(String destroyType) {
		this.destroy_type = destroyType;
	}
	public String getFlushType() {
		return flush_type;
	}
	public void setFlushType(String flushType) {
		this.flush_type = flushType;
	}
	public String getHandUpLimit() {
		return hand_up_limit;
	}
	public void setHandUpLimit(String handUpLimit) {
		this.hand_up_limit = handUpLimit;
	}
	public String getCloseLimit() {
		return close_limit;
	}
	public void setCloseLimit(String closeLimit) {
		this.close_limit = closeLimit;
	}
	public String getIsallowA() {
		return isallowA;
	}
	public void setIsallowA(String isallowA) {
		this.isallowA = isallowA;
	}
	public String getDirectionalFlag() {
		return directional_flag;
	}
	public void setDirectionalFlag(String directionalFlag) {
		this.directional_flag = directionalFlag;
	}
	public String getPublicType() {
		return public_type;
	}
	public void setPublicType(String publicType) {
		this.public_type = publicType;
	}
	public String getPublicCount_type() {
		return public_count_type;
	}
	public void setPublicCount_type(String publicCount_type) {
		this.public_count_type = publicCount_type;
	}
	public String getRemainFlag() {
		return remain_flag;
	}
	public void setRemainFlag(String remainFlag) {
		this.remain_flag = remainFlag;
	}
	public String getCarFlag() {
		return car_flag;
	}
	public void setCarFlag(String carFlag) {
		this.car_flag = carFlag;
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
	public String getUdtClr() {
		return udt_clr;
	}
	public void setUdtClr(String udtClr) {
		this.udt_clr = udtClr;
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
		return "AcctControl [id=" + id + ", opeCode=" + ope_code + ", orgCode="
				+ org_code + ", subjectCode=" + subject_code + ", orderCode="
				+ order_code + ", accountName=" + account_name + ", countCode="
				+ count_code + ", accountLimit=" + account_limit + ", iconLimit="
				+ icon_limit + ", detailCode=" + detail_code
				+ ", allowDirection=" + allow_direction
				+ ", remainingDirection=" + remaining_direction
				+ ", accountType=" + account_type + ", detailFlag=" + detail_flag
				+ ", borrowCode=" + borrow_code + ", loanCode=" + loan_code
				+ ", destroyType=" + destroy_type + ", flushType=" + flush_type
				+ ", handUpLimit=" + hand_up_limit + ", closeLimit=" + close_limit
				+ ", isallowA=" + isallowA + ", directionalFlag="
				+ directional_flag + ", publicType=" + public_type
				+ ", publicCountType=" + public_count_type + ", remainFlag="
				+ remain_flag + ", carFlag=" + car_flag + ", startTime="
				+ start_time + ", lastTime=" + last_time + ", udtClr=" + udt_clr
				+ ", useStatus=" + use_status + ", recSts=" + rec_sts + "]";
	}
	
	
	   
}
