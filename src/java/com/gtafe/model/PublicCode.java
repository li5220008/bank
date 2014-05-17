package com.gtafe.model;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * Desc: 公用码表
 * User: weiguili(li5220008@gmail.com)
 * Date: 2014年5月14日
 * Time: 下午4:38:10
 */
public class PublicCode {
    private int id;//                   numeric(8,0)                   identity,
    private String public_code;//代码编号          char(15)                       null,
    private String public_type;//代码种类          char(2)                        null,
    private String public_name;//代码名称          nvarchar(25)                   null,
    private String comment;//注释              text                           null,
    private String control_message;//控制信息      nvarchar(10)                   null,
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date start_time;//启用日期           datetime                       null,
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date last_time;//最后更新日期            datetime                       null,
    private String upt_tlr;//更新柜员              char(6)                        null,
    private String use_status;//使用状态           char(1)                        null,
    private String rec_sts;//记录状态              char(1)                        null

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPublic_code() {
        return public_code;
    }

    public void setPublic_code(String public_code) {
        this.public_code = public_code;
    }

    public String getPublic_type() {
        return public_type;
    }

    public void setPublic_type(String public_type) {
        this.public_type = public_type;
    }

    public String getPublic_name() {
        return public_name;
    }

    public void setPublic_name(String public_name) {
        this.public_name = public_name;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getControl_message() {
        return control_message;
    }

    public void setControl_message(String control_message) {
        this.control_message = control_message;
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

    public String getUpt_tlr() {
        return upt_tlr;
    }

    public void setUpt_tlr(String upt_tlr) {
        this.upt_tlr = upt_tlr;
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
        return "PublicCode [id=" + id + ", public_code=" + public_code
                + ", public_type=" + public_type + ", public_name=" + public_name
                + ", comment=" + comment + ", control_message=" + control_message
                + ", start_time=" + start_time + ", last_time=" + last_time
                + ", upt_tlr=" + upt_tlr + ", use_status=" + use_status
                + ", rec_sts=" + rec_sts + "]";
    }

}
