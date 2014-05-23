package com.gtafe.model;

import java.math.BigDecimal;

/*
 * 交易会计分录表
 * chuan
 */
public class TransactionRecord {

	private BigDecimal id;
	private String ope_code;
	private String trade_code;
	private String trade_name;
	private String trade_subcode;
	private String comment;
	private String trade_pen;
	private String pen_reason;
	private String journal_no;
	private String borrow_flag;
	private String subject_code;
	private String inr_act_no;
	private String out_act_gre;
	private String out_act_tye;
	private String read_flag;
	private String supervise_flag;
	private String start_date;
	private String last_date;
	private String UDT_TLR;
	private String USE_STS;
	private String REC_STS;
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
	public String getTrade_code() {
		return trade_code;
	}
	public void setTrade_code(String trade_code) {
		this.trade_code = trade_code;
	}
	public String getTrade_name() {
		return trade_name;
	}
	public void setTrade_name(String trade_name) {
		this.trade_name = trade_name;
	}
	public String getTrade_subcode() {
		return trade_subcode;
	}
	public void setTrade_subcode(String trade_subcode) {
		this.trade_subcode = trade_subcode;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getTrade_pen() {
		return trade_pen;
	}
	public void setTrade_pen(String trade_pen) {
		this.trade_pen = trade_pen;
	}
	public String getPen_reason() {
		return pen_reason;
	}
	public void setPen_reason(String pen_reason) {
		this.pen_reason = pen_reason;
	}
	public String getJournal_no() {
		return journal_no;
	}
	public void setJournal_no(String journal_no) {
		this.journal_no = journal_no;
	}
	public String getBorrow_flag() {
		return borrow_flag;
	}
	public void setBorrow_flag(String borrow_flag) {
		this.borrow_flag = borrow_flag;
	}
	public String getSubject_code() {
		return subject_code;
	}
	public void setSubject_code(String subject_code) {
		this.subject_code = subject_code;
	}
	public String getInr_act_no() {
		return inr_act_no;
	}
	public void setInr_act_no(String inr_act_no) {
		this.inr_act_no = inr_act_no;
	}
	public String getOut_act_gre() {
		return out_act_gre;
	}
	public void setOut_act_gre(String out_act_gre) {
		this.out_act_gre = out_act_gre;
	}
	public String getOut_act_tye() {
		return out_act_tye;
	}
	public void setOut_act_tye(String out_act_tye) {
		this.out_act_tye = out_act_tye;
	}
	public String getRead_flag() {
		return read_flag;
	}
	public void setRead_flag(String read_flag) {
		this.read_flag = read_flag;
	}
	public String getSupervise_flag() {
		return supervise_flag;
	}
	public void setSupervise_flag(String supervise_flag) {
		this.supervise_flag = supervise_flag;
	}
	public String getStart_date() {
		return start_date;
	}
	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}
	public String getLast_date() {
		return last_date;
	}
	public void setLast_date(String last_date) {
		this.last_date = last_date;
	}
	public String getUDT_TLR() {
		return UDT_TLR;
	}
	public void setUDT_TLR(String uDT_TLR) {
		UDT_TLR = uDT_TLR;
	}
	public String getUSE_STS() {
		return USE_STS;
	}
	public void setUSE_STS(String uSE_STS) {
		USE_STS = uSE_STS;
	}
	public String getREC_STS() {
		return REC_STS;
	}
	public void setREC_STS(String rEC_STS) {
		REC_STS = rEC_STS;
	}
	
}
