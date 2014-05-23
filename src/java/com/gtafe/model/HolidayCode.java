package com.gtafe.model;

/*
 * 假日码
 * @author chuan
 */
public class HolidayCode {
	private String id;
	private String holiday_code;// 假日码
	private String holiday_name;// 假日名称
	private String Date;// 日期
	private String comment;// 假日描述
	private String country_code;
	private String start_time;// 启用日期
	private String last_time;// 最后更新日期
	private String UPT_TLR;// 使用状态
	private String use_status;// 记录状态
    private String REC_STS;
	public String getCountry_code() {
		return country_code;
	}

	public void setCountry_code(String country_code) {
		this.country_code = country_code;
	}

	public String getREC_STS() {
		return REC_STS;
	}

	public void setREC_STS(String rEC_STS) {
		REC_STS = rEC_STS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getHoliday_code() {
		return holiday_code;
	}

	public void setHoliday_code(String holiday_code) {
		this.holiday_code = holiday_code;
	}

	public String getHoliday_name() {
		return holiday_name;
	}

	public void setHoliday_name(String holiday_name) {
		this.holiday_name = holiday_name;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getLast_time() {
		return last_time;
	}

	public void setLast_time(String last_time) {
		this.last_time = last_time;
	}

	public String getUPT_TLR() {
		return UPT_TLR;
	}

	public void setUPT_TLR(String uPT_TLR) {
		UPT_TLR = uPT_TLR;
	}

	public String getUse_status() {
		return use_status;
	}

	public void setUse_status(String use_status) {
		this.use_status = use_status;
	}
}
