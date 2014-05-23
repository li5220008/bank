package com.gtafe.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


/**
 * 产品定义表
 * @author li.wan
 *
 */
public class Pifprd implements Serializable{

	private static final long serialVersionUID = -8617814268057365143L;

		private String prd_sal;//发行产品号
         private String prd_cde;//产品码
         private String irt_key;//利率主键
         private String frt_key;//费率主键
         private String xrt_key;//汇率主键
         private String prd_bus;//产品业务类别
         private Integer prd_num;//产品编号        
         private String prd_dat;//产品发行日期
         private Integer prd_yno;//产品发行年内期数
         private String prd_ttl;//产品对外标题
         
         //这种类型要测试一下
         private BigDecimal srt_amt;//起购金额
         private BigDecimal inc_amt;//增购金额
         private BigDecimal lim_amt;//最大限额
         private BigDecimal quo_amt;//确定份额
         private BigDecimal mng_frt;//管理费率
         private BigDecimal rdm_frt;//赎回费率
         private BigDecimal srv_fe1;//服务费1
         private BigDecimal srv_fe2;//服务费2
         private BigDecimal yrt_rat;//预计年收益率
         private BigDecimal int_rat;//固定利率
         private BigDecimal fin_rat;//浮动利率
         private BigDecimal frt_spd;//汇率点差
         private Character  aut_ext;//自动续期
         private Character aut_tra;//自动转账
         private Character ral_adv;//实时通知
         private Character stm_mal;//寄送账单
         private Character saf_hlp;//使用安全工具
         @DateTimeFormat(pattern="yyyy-MM-dd")
         private Date rst_dat;//募集止日
         @DateTimeFormat(pattern="yyyy-MM-dd")
         private Date val_dat;//起息日
         @DateTimeFormat(pattern="yyyy-MM-dd")
         private Date due_dat;//到期日
         @DateTimeFormat(pattern="yyyy-MM-dd")
         private Date act_dat;//到账日
         private Integer max_ext;//最大续期数
         private Character stp_rgt;//终止权利
         private Character rdm_rgt;//赎回权利
         private BigDecimal rdm_lim;//赎回限额
         private String prd_rl1;//规则编码1
         private String prd_rl2;//规则编码2
         private String prd_rl3;//规则编码3
         private String prd_ccy;//产品适用货币
         private String prd_cus;//产品适用客户
         private BigDecimal prd_rsk;//产品风险权数
         @DateTimeFormat(pattern="yyyy-MM-dd")
         private Date upt_dat;//最后更新日期
         private String upt_tlr;//更新柜员
         private Character rec_sts;//记 录 状 态
		public String getPrd_sal() {
			return prd_sal;
		}
		public void setPrd_sal(String prd_sal) {
			this.prd_sal = prd_sal;
		}
		public String getPrd_cde() {
			return prd_cde;
		}
		public void setPrd_cde(String prd_cde) {
			this.prd_cde = prd_cde;
		}
		public String getIrt_key() {
			return irt_key;
		}
		public void setIrt_key(String irt_key) {
			this.irt_key = irt_key;
		}
		public String getFrt_key() {
			return frt_key;
		}
		public void setFrt_key(String frt_key) {
			this.frt_key = frt_key;
		}
		public String getXrt_key() {
			return xrt_key;
		}
		public void setXrt_key(String xrt_key) {
			this.xrt_key = xrt_key;
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
		public String getPrd_dat() {
			return prd_dat;
		}
		public void setPrd_dat(String prd_dat) {
			this.prd_dat = prd_dat;
		}
		public Integer getPrd_yno() {
			return prd_yno;
		}
		public void setPrd_yno(Integer prd_yno) {
			this.prd_yno = prd_yno;
		}
		public String getPrd_ttl() {
			return prd_ttl;
		}
		public void setPrd_ttl(String prd_ttl) {
			this.prd_ttl = prd_ttl;
		}
		public BigDecimal getSrt_amt() {
			return srt_amt;
		}
		public void setSrt_amt(BigDecimal srt_amt) {
			this.srt_amt = srt_amt;
		}
		public BigDecimal getInc_amt() {
			return inc_amt;
		}
		public void setInc_amt(BigDecimal inc_amt) {
			this.inc_amt = inc_amt;
		}
		public BigDecimal getLim_amt() {
			return lim_amt;
		}
		public void setLim_amt(BigDecimal lim_amt) {
			this.lim_amt = lim_amt;
		}
		public BigDecimal getQuo_amt() {
			return quo_amt;
		}
		public void setQuo_amt(BigDecimal quo_amt) {
			this.quo_amt = quo_amt;
		}
		public BigDecimal getMng_frt() {
			return mng_frt;
		}
		public void setMng_frt(BigDecimal mng_frt) {
			this.mng_frt = mng_frt;
		}
		public BigDecimal getRdm_frt() {
			return rdm_frt;
		}
		public void setRdm_frt(BigDecimal rdm_frt) {
			this.rdm_frt = rdm_frt;
		}
		public BigDecimal getSrv_fe1() {
			return srv_fe1;
		}
		public void setSrv_fe1(BigDecimal srv_fe1) {
			this.srv_fe1 = srv_fe1;
		}
		public BigDecimal getSrv_fe2() {
			return srv_fe2;
		}
		public void setSrv_fe2(BigDecimal srv_fe2) {
			this.srv_fe2 = srv_fe2;
		}
		public BigDecimal getYrt_rat() {
			return yrt_rat;
		}
		public void setYrt_rat(BigDecimal yrt_rat) {
			this.yrt_rat = yrt_rat;
		}
		public BigDecimal getInt_rat() {
			return int_rat;
		}
		public void setInt_rat(BigDecimal int_rat) {
			this.int_rat = int_rat;
		}
		public BigDecimal getFin_rat() {
			return fin_rat;
		}
		public void setFin_rat(BigDecimal fin_rat) {
			this.fin_rat = fin_rat;
		}
		public BigDecimal getFrt_spd() {
			return frt_spd;
		}
		public void setFrt_spd(BigDecimal frt_spd) {
			this.frt_spd = frt_spd;
		}
		public Character getAut_ext() {
			return aut_ext;
		}
		public void setAut_ext(Character aut_ext) {
			this.aut_ext = aut_ext;
		}
		public Character getAut_tra() {
			return aut_tra;
		}
		public void setAut_tra(Character aut_tra) {
			this.aut_tra = aut_tra;
		}
		public Character getRal_adv() {
			return ral_adv;
		}
		public void setRal_adv(Character ral_adv) {
			this.ral_adv = ral_adv;
		}
		public Character getStm_mal() {
			return stm_mal;
		}
		public void setStm_mal(Character stm_mal) {
			this.stm_mal = stm_mal;
		}
		public Character getSaf_hlp() {
			return saf_hlp;
		}
		public void setSaf_hlp(Character saf_hlp) {
			this.saf_hlp = saf_hlp;
		}
		public Date getRst_dat() {
			return rst_dat;
		}
		public void setRst_dat(Date rst_dat) {
			this.rst_dat = rst_dat;
		}
		public Date getVal_dat() {
			return val_dat;
		}
		public void setVal_dat(Date val_dat) {
			this.val_dat = val_dat;
		}
		public Date getDue_dat() {
			return due_dat;
		}
		public void setDue_dat(Date due_dat) {
			this.due_dat = due_dat;
		}
		public Date getAct_dat() {
			return act_dat;
		}
		public void setAct_dat(Date act_dat) {
			this.act_dat = act_dat;
		}
		public Integer getMax_ext() {
			return max_ext;
		}
		public void setMax_ext(Integer max_ext) {
			this.max_ext = max_ext;
		}
		public Character getStp_rgt() {
			return stp_rgt;
		}
		public void setStp_rgt(Character stp_rgt) {
			this.stp_rgt = stp_rgt;
		}
		public Character getRdm_rgt() {
			return rdm_rgt;
		}
		public void setRdm_rgt(Character rdm_rgt) {
			this.rdm_rgt = rdm_rgt;
		}
		public BigDecimal getRdm_lim() {
			return rdm_lim;
		}
		public void setRdm_lim(BigDecimal rdm_lim) {
			this.rdm_lim = rdm_lim;
		}
		public String getPrd_rl1() {
			return prd_rl1;
		}
		public void setPrd_rl1(String prd_rl1) {
			this.prd_rl1 = prd_rl1;
		}
		public String getPrd_rl2() {
			return prd_rl2;
		}
		public void setPrd_rl2(String prd_rl2) {
			this.prd_rl2 = prd_rl2;
		}
		public String getPrd_rl3() {
			return prd_rl3;
		}
		public void setPrd_rl3(String prd_rl3) {
			this.prd_rl3 = prd_rl3;
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
			return "Pifprd [prd_sal=" + prd_sal + ", prd_cde=" + prd_cde
					+ ", irt_key=" + irt_key + ", frt_key=" + frt_key
					+ ", xrt_key=" + xrt_key + ", prd_bus=" + prd_bus
					+ ", prd_num=" + prd_num + ", prd_dat=" + prd_dat
					+ ", prd_yno=" + prd_yno + ", prd_ttl=" + prd_ttl
					+ ", srt_amt=" + srt_amt + ", inc_amt=" + inc_amt
					+ ", lim_amt=" + lim_amt + ", quo_amt=" + quo_amt
					+ ", mng_frt=" + mng_frt + ", rdm_frt=" + rdm_frt
					+ ", srv_fe1=" + srv_fe1 + ", srv_fe2=" + srv_fe2
					+ ", yrt_rat=" + yrt_rat + ", int_rat=" + int_rat
					+ ", fin_rat=" + fin_rat + ", frt_spd=" + frt_spd
					+ ", aut_ext=" + aut_ext + ", aut_tra=" + aut_tra
					+ ", ral_adv=" + ral_adv + ", stm_mal=" + stm_mal
					+ ", saf_hlp=" + saf_hlp + ", rst_dat=" + rst_dat
					+ ", val_dat=" + val_dat + ", due_dat=" + due_dat
					+ ", act_dat=" + act_dat + ", max_ext=" + max_ext
					+ ", stp_rgt=" + stp_rgt + ", rdm_rgt=" + rdm_rgt
					+ ", rdm_lim=" + rdm_lim + ", prd_rl1=" + prd_rl1
					+ ", prd_rl2=" + prd_rl2 + ", prd_rl3=" + prd_rl3
					+ ", prd_ccy=" + prd_ccy + ", prd_cus=" + prd_cus
					+ ", prd_rsk=" + prd_rsk + ", upt_dat=" + upt_dat
					+ ", upt_tlr=" + upt_tlr + ", rec_sts=" + rec_sts + "]";
		}

         
         
}
