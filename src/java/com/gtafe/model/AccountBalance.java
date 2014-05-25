package com.gtafe.model;

import java.util.Date;

/**
 * Desc: 账户余额
 * User: weiguili(li5220008@gmail.com)
 * Date: 5/25/14
 * Time: 12:40 PM
 */
public class AccountBalance {
    private int id;// NUMERIC(8,0) PRIMARY KEY NOT NULL,
    private String cus_number;//客户编号 CHAR(9),
    private String cus_account;//客户账号/卡号 CHAR(36),
    private String cus_type;//客户类别 CHAR(2),
    private String cus_name;//客户名称 CHAR(2),
    private String account_status;//帐户状态 CHAR(2),
    private String fon_cuy_type;//外币帐户类别 CHAR(10),
    private String loy_cuy_type;//本币账户类别 CHAR(10),
    private Date open_date;//开户日期 DATETIME,
    private String pay_type;//支取方式 CHAR(6),
    private String coin_code;//币号 CHAR(10),
    private float fixed_quota;//活期存款额 DECIMAL(18,0),
    private float current_quota;//定期存款额 DECIMAL(18,0),
    private float quota_amount;//余额合计 DECIMAL(18,0)

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCus_number() {
        return cus_number;
    }

    public void setCus_number(String cus_number) {
        this.cus_number = cus_number;
    }

    public String getCus_account() {
        return cus_account;
    }

    public void setCus_account(String cus_account) {
        this.cus_account = cus_account;
    }

    public String getCus_type() {
        return cus_type;
    }

    public void setCus_type(String cus_type) {
        this.cus_type = cus_type;
    }

    public String getCus_name() {
        return cus_name;
    }

    public void setCus_name(String cus_name) {
        this.cus_name = cus_name;
    }

    public String getAccount_status() {
        return account_status;
    }

    public void setAccount_status(String account_status) {
        this.account_status = account_status;
    }

    public String getFon_cuy_type() {
        return fon_cuy_type;
    }

    public void setFon_cuy_type(String fon_cuy_type) {
        this.fon_cuy_type = fon_cuy_type;
    }

    public String getLoy_cuy_type() {
        return loy_cuy_type;
    }

    public void setLoy_cuy_type(String loy_cuy_type) {
        this.loy_cuy_type = loy_cuy_type;
    }

    public Date getOpen_date() {
        return open_date;
    }

    public void setOpen_date(Date open_date) {
        this.open_date = open_date;
    }

    public String getPay_type() {
        return pay_type;
    }

    public void setPay_type(String pay_type) {
        this.pay_type = pay_type;
    }

    public String getCoin_code() {
        return coin_code;
    }

    public void setCoin_code(String coin_code) {
        this.coin_code = coin_code;
    }

    public float getFixed_quota() {
        return fixed_quota;
    }

    public void setFixed_quota(float fixed_quota) {
        this.fixed_quota = fixed_quota;
    }

    public float getCurrent_quota() {
        return current_quota;
    }

    public void setCurrent_quota(float current_quota) {
        this.current_quota = current_quota;
    }

    public float getQuota_amount() {
        return quota_amount;
    }

    public void setQuota_amount(float quota_amount) {
        this.quota_amount = quota_amount;
    }

    @Override
    public String toString() {
        return "AccountBalance{" +
                "id=" + id +
                ", cus_number='" + cus_number + '\'' +
                ", cus_account='" + cus_account + '\'' +
                ", cus_type='" + cus_type + '\'' +
                ", cus_name='" + cus_name + '\'' +
                ", account_status='" + account_status + '\'' +
                ", fon_cuy_type='" + fon_cuy_type + '\'' +
                ", loy_cuy_type='" + loy_cuy_type + '\'' +
                ", open_date=" + open_date +
                ", pay_type='" + pay_type + '\'' +
                ", coin_code='" + coin_code + '\'' +
                ", fixed_quota=" + fixed_quota +
                ", current_quota=" + current_quota +
                ", quota_amount=" + quota_amount +
                '}';
    }
}
