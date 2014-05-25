package com.gtafe.model;

import java.util.Date;

/**
 * Desc: 劵别资料
 * User: weiguili(li5220008@gmail.com)
 * Date: 5/25/14
 * Time: 12:40 PM
 */
public class TicketDatum {
    private int id;// NUMERIC(8,0) PRIMARY KEY NOT NULL,
    private String currency;//币种 CHAR(6),
    private String currency_shorts;//货币简写 CHAR(2),
    private String currency_symbol;//货币符 CHAR(2),
    private String face_value;//面值 CHAR(2),
    private float last_time;//最后更新日 DATETIME,
    private String udt_tlr;//更新柜员 CHAR(6),
    private String rec_sts;//记录状态 CHAR(1)

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getCurrency_shorts() {
        return currency_shorts;
    }

    public void setCurrency_shorts(String currency_shorts) {
        this.currency_shorts = currency_shorts;
    }

    public String getCurrency_symbol() {
        return currency_symbol;
    }

    public void setCurrency_symbol(String currency_symbol) {
        this.currency_symbol = currency_symbol;
    }

    public String getFace_value() {
        return face_value;
    }

    public void setFace_value(String face_value) {
        this.face_value = face_value;
    }

    public float getLast_time() {
        return last_time;
    }

    public void setLast_time(float last_time) {
        this.last_time = last_time;
    }

    public String getUdt_tlr() {
        return udt_tlr;
    }

    public void setUdt_tlr(String udt_tlr) {
        this.udt_tlr = udt_tlr;
    }

    public String getRec_sts() {
        return rec_sts;
    }

    public void setRec_sts(String rec_sts) {
        this.rec_sts = rec_sts;
    }

    @Override
    public String toString() {
        return "TicketDatum{" +
                "id=" + id +
                ", currency='" + currency + '\'' +
                ", currency_shorts='" + currency_shorts + '\'' +
                ", currency_symbol='" + currency_symbol + '\'' +
                ", face_value='" + face_value + '\'' +
                ", last_time=" + last_time +
                ", udt_tlr='" + udt_tlr + '\'' +
                ", rec_sts='" + rec_sts + '\'' +
                '}';
    }
}
