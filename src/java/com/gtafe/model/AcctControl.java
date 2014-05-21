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

    public String getSubject_code() {
        return subject_code;
    }

    public void setSubject_code(String subject_code) {
        this.subject_code = subject_code;
    }

    public String getOrder_code() {
        return order_code;
    }

    public void setOrder_code(String order_code) {
        this.order_code = order_code;
    }

    public String getAccount_name() {
        return account_name;
    }

    public void setAccount_name(String account_name) {
        this.account_name = account_name;
    }

    public String getCount_code() {
        return count_code;
    }

    public void setCount_code(String count_code) {
        this.count_code = count_code;
    }

    public String getAccount_limit() {
        return account_limit;
    }

    public void setAccount_limit(String account_limit) {
        this.account_limit = account_limit;
    }

    public String getIcon_limit() {
        return icon_limit;
    }

    public void setIcon_limit(String icon_limit) {
        this.icon_limit = icon_limit;
    }

    public String getDetail_code() {
        return detail_code;
    }

    public void setDetail_code(String detail_code) {
        this.detail_code = detail_code;
    }

    public String getAllow_direction() {
        return allow_direction;
    }

    public void setAllow_direction(String allow_direction) {
        this.allow_direction = allow_direction;
    }

    public String getRemaining_direction() {
        return remaining_direction;
    }

    public void setRemaining_direction(String remaining_direction) {
        this.remaining_direction = remaining_direction;
    }

    public String getAccount_type() {
        return account_type;
    }

    public void setAccount_type(String account_type) {
        this.account_type = account_type;
    }

    public String getDetail_flag() {
        return detail_flag;
    }

    public void setDetail_flag(String detail_flag) {
        this.detail_flag = detail_flag;
    }

    public String getBorrow_code() {
        return borrow_code;
    }

    public void setBorrow_code(String borrow_code) {
        this.borrow_code = borrow_code;
    }

    public String getLoan_code() {
        return loan_code;
    }

    public void setLoan_code(String loan_code) {
        this.loan_code = loan_code;
    }

    public String getDestroy_type() {
        return destroy_type;
    }

    public void setDestroy_type(String destroy_type) {
        this.destroy_type = destroy_type;
    }

    public String getFlush_type() {
        return flush_type;
    }

    public void setFlush_type(String flush_type) {
        this.flush_type = flush_type;
    }

    public String getHand_up_limit() {
        return hand_up_limit;
    }

    public void setHand_up_limit(String hand_up_limit) {
        this.hand_up_limit = hand_up_limit;
    }

    public String getClose_limit() {
        return close_limit;
    }

    public void setClose_limit(String close_limit) {
        this.close_limit = close_limit;
    }

    public String getIsallowA() {
        return isallowA;
    }

    public void setIsallowA(String isallowA) {
        this.isallowA = isallowA;
    }

    public String getDirectional_flag() {
        return directional_flag;
    }

    public void setDirectional_flag(String directional_flag) {
        this.directional_flag = directional_flag;
    }

    public String getPublic_type() {
        return public_type;
    }

    public void setPublic_type(String public_type) {
        this.public_type = public_type;
    }

    public String getPublic_count_type() {
        return public_count_type;
    }

    public void setPublic_count_type(String public_count_type) {
        this.public_count_type = public_count_type;
    }

    public String getRemain_flag() {
        return remain_flag;
    }

    public void setRemain_flag(String remain_flag) {
        this.remain_flag = remain_flag;
    }

    public String getCar_flag() {
        return car_flag;
    }

    public void setCar_flag(String car_flag) {
        this.car_flag = car_flag;
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

    public String getUse_status() {
        return use_status;
    }

    public void setUse_status(String use_status) {
        this.use_status = use_status;
    }

    public String getRec_sts() {
        return rec_sts;
    }

    public void setRec_sts(String rec_sts) {
        this.rec_sts = rec_sts;
    }

    @Override
    public String toString() {
        return "AcctControl{" +
                "id=" + id +
                ", ope_code='" + ope_code + '\'' +
                ", org_code='" + org_code + '\'' +
                ", subject_code='" + subject_code + '\'' +
                ", order_code='" + order_code + '\'' +
                ", account_name='" + account_name + '\'' +
                ", count_code='" + count_code + '\'' +
                ", account_limit='" + account_limit + '\'' +
                ", icon_limit='" + icon_limit + '\'' +
                ", detail_code='" + detail_code + '\'' +
                ", allow_direction='" + allow_direction + '\'' +
                ", remaining_direction='" + remaining_direction + '\'' +
                ", account_type='" + account_type + '\'' +
                ", detail_flag='" + detail_flag + '\'' +
                ", borrow_code='" + borrow_code + '\'' +
                ", loan_code='" + loan_code + '\'' +
                ", destroy_type='" + destroy_type + '\'' +
                ", flush_type='" + flush_type + '\'' +
                ", hand_up_limit='" + hand_up_limit + '\'' +
                ", close_limit='" + close_limit + '\'' +
                ", isallowA='" + isallowA + '\'' +
                ", directional_flag='" + directional_flag + '\'' +
                ", public_type='" + public_type + '\'' +
                ", public_count_type='" + public_count_type + '\'' +
                ", remain_flag='" + remain_flag + '\'' +
                ", car_flag='" + car_flag + '\'' +
                ", start_time=" + start_time +
                ", last_time=" + last_time +
                ", udt_clr='" + udt_clr + '\'' +
                ", use_status='" + use_status + '\'' +
                ", rec_sts='" + rec_sts + '\'' +
                '}';
    }
}
