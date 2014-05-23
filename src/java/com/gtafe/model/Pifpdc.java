package com.gtafe.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 产品码表
 * @author li.wan
 *
 */
public class Pifpdc implements Serializable{
        /**
	 * 
	 */
	private static final long serialVersionUID = -473199885764305033L;
		private String prd_cde;//产品码
        private String bus_cde;//(业务码)
        private String prd_bus;//产品业务类别
        private Integer prd_num;//产品编号
        private String prd_nam;//产品描述
        private String prd_snm;//产品简称
        private String prd_idt;//产品符
        @DateTimeFormat(pattern="yyyy-MM-dd")
        private Date    prd_val;//产品有效期
        private String prd_itm;//产品核算科目
        private String prd_pri;//产品价格类别
        private String prd_fee;//产品费用类别
        private String prd_prf;//产品收益类别
        private String prd_sev;//产品服务类别
        private String prd_trm;//产品期限类别
        private String prd_ris;//产品限制类别
        private String prd_rul;//产品规则类别
        private String prd_ccy;//产品适用货币类别
        private String prd_cus;//产品适用客户类别
        private BigDecimal prd_rsk;//该产品风险权数
        @DateTimeFormat(pattern="yyyy-MM-dd")
        private Date upt_dat;//最后更新日期
        private String upt_tlr;//更新柜员
        private Character rec_sts;//记 录 状 态
        
		public String getPrd_cde() {
			return prd_cde;
		}
		public void setPrd_cde(String prd_cde) {
			if(prd_cde.equals("")){
				prd_cde=null;
			}
			this.prd_cde = prd_cde;
		}
		public String getBus_cde() {
			return bus_cde;
		}
		public void setBus_cde(String bus_cde) {
			this.bus_cde = bus_cde;
		}
		public String getPrd_bus() {
			return prd_bus;
		}
		public void setPrd_bus(String prd_bus) {
			this.prd_bus = prd_bus;
		}
		public Integer getPrd_num() {
			return prd_num;
		}
		public void setPrd_num(Integer prd_num) {
			this.prd_num = prd_num;
		}
		public String getPrd_nam() {
			return prd_nam;
		}
		public void setPrd_nam(String prd_nam) {
			this.prd_nam = prd_nam;
		}
		public String getPrd_snm() {
			return prd_snm;
		}
		public void setPrd_snm(String prd_snm) {
			this.prd_snm = prd_snm;
		}
		public String getPrd_idt() {
			return prd_idt;
		}
		public void setPrd_idt(String prd_idt) {
			this.prd_idt = prd_idt;
		}
		public Date getPrd_val() {
			return prd_val;
		}
		public void setPrd_val(Date prd_val) {
			this.prd_val = prd_val;
		}
		public String getPrd_itm() {
			return prd_itm;
		}
		public void setPrd_itm(String prd_itm) {
			this.prd_itm = prd_itm;
		}
		public String getPrd_pri() {
			return prd_pri;
		}
		public void setPrd_pri(String prd_pri) {
			this.prd_pri = prd_pri;
		}
		public String getPrd_fee() {
			return prd_fee;
		}
		public void setPrd_fee(String prd_fee) {
			this.prd_fee = prd_fee;
		}
		public String getPrd_prf() {
			return prd_prf;
		}
		public void setPrd_prf(String prd_prf) {
			this.prd_prf = prd_prf;
		}
		public String getPrd_sev() {
			return prd_sev;
		}
		public void setPrd_sev(String prd_sev) {
			this.prd_sev = prd_sev;
		}
		public String getPrd_trm() {
			return prd_trm;
		}
		public void setPrd_trm(String prd_trm) {
			this.prd_trm = prd_trm;
		}
		public String getPrd_ris() {
			return prd_ris;
		}
		public void setPrd_ris(String prd_ris) {
			this.prd_ris = prd_ris;
		}
		public String getPrd_rul() {
			return prd_rul;
		}
		public void setPrd_rul(String prd_rul) {
			this.prd_rul = prd_rul;
		}
		public String getPrd_ccy() {
			return prd_ccy;
		}
		public void setPrd_ccy(String prd_ccy) {
			this.prd_ccy = prd_ccy;
		}
		public String getPrd_cus() {
			return prd_cus;
		}
		public void setPrd_cus(String prd_cus) {
			this.prd_cus = prd_cus;
		}
		public BigDecimal getPrd_rsk() {
			return prd_rsk;
		}
		public void setPrd_rsk(BigDecimal prd_rsk) {
			this.prd_rsk = prd_rsk;
		}
		public Date getUpt_dat() {
			return upt_dat;
		}
		public void setUpt_dat(Date upt_dat) {
			this.upt_dat = upt_dat;
		}
		public String getUpt_tlr() {
			return upt_tlr;
		}
		public void setUpt_tlr(String upt_tlr) {
			this.upt_tlr = upt_tlr;
		}
		public Character getRec_sts() {
			return rec_sts;
		}
		public void setRec_sts(Character rec_sts) {
			this.rec_sts = rec_sts;
		}
		@Override
		public String toString() {
			return "Pifpdc [prd_cde=" + prd_cde + ", bus_cde=" + bus_cde
					+ ", prd_bus=" + prd_bus + ", prd_num=" + prd_num
					+ ", prd_nam=" + prd_nam + ", prd_snm=" + prd_snm
					+ ", prd_idt=" + prd_idt + ", prd_val=" + prd_val
					+ ", prd_itm=" + prd_itm + ", prd_pri=" + prd_pri
					+ ", prd_fee=" + prd_fee + ", prd_prf=" + prd_prf
					+ ", prd_sev=" + prd_sev + ", prd_trm=" + prd_trm
					+ ", prd_ris=" + prd_ris + ", prd_rul=" + prd_rul
					+ ", prd_ccy=" + prd_ccy + ", prd_cus=" + prd_cus
					+ ", prd_rsk=" + prd_rsk + ", upt_dat=" + upt_dat
					+ ", upt_tlr=" + upt_tlr + ", rec_sts=" + rec_sts + "]";
		}
		
        
        
        
}
