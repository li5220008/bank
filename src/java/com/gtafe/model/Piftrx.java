package com.gtafe.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 交易码表实体
 * @author 唐世朋
 *
 */
public class Piftrx {
   
	private String trx_cde;   //交易码
	
	private String app_cde;   //应用码
	
	private String trx_grp;  //交易分组码
	
	private String txg_sno;  //交易组内编号
	
	private String trx_nam;  //交易描述
	private String trx_snm;  //交易简称
	
	private String trx_mmo;  //交易符
	
	private Integer trx_cls; //交易级别
	
	private Integer aut_lvl; //交易授权级别
	
	private Character trx_sts;  //交易可用状态
	
	private Character run_hol;  //假期可用标志
	
	private Character run_mod; //运行模式
	
	private Character rep_flg; //可重入标识
	
	private Character log_jnl;  //交易记录日志标志
	
	private Character his_frm;  //交易记录历史标志
	
	private Character his_prt;  //交易打印历史标志
	
	private Character act_cha; //更新账户链标志
	
	private Character awa_flg;  //使用工作区AWA的标志
	
	private Character out_tss;  //队列输出标志
	
	private String sub_trx;  //后继交易码
	
	private Integer tlr_tot;  //柜员累计数标识
	
	private Integer inp_fmt;  //输入缓冲区格式码
	
	private String skp_ctl;  //交易处理控制标志1
	
	private String swh_ctl;  //交易处理控制标志2
	
	private Integer pro_cnt; //进程计数器
	
	private String pro_grp;  //处理程序及其所有控制字
	
	private String pro_cde;  //进程码
	
	private Character err_ext;  //出错继续执行的标志
	
	private String pro_ctl;  //进程控制字	
	
	//实现日期的格式化/解析
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date upt_dat;  //最后更新日期
	private String upt_tlr;  //更新柜员
	private String rec_sts; //记录状态
	
	
	public String getTrx_cde() {
		return trx_cde;
	}
	public void setTrx_cde(String trx_cde) {
		this.trx_cde = trx_cde;
	}
	public String getApp_cde() {
		return app_cde;
	}
	public void setApp_cde(String app_cde) {
		this.app_cde = app_cde;
	}
	public String getTrx_grp() {
		return trx_grp;
	}
	public void setTrx_grp(String trx_grp) {
		this.trx_grp = trx_grp;
	}
	public String getTxg_sno() {
		return txg_sno;
	}
	public void setTxg_sno(String txg_sno) {
		this.txg_sno = txg_sno;
	}
	public String getTrx_mmo() {
		return trx_mmo;
	}
	public void setTrx_mmo(String trx_mmo) {
		this.trx_mmo = trx_mmo;
	}
	public Integer getTrx_cls() {
		return trx_cls;
	}
	public void setTrx_cls(Integer trx_cls) {
		this.trx_cls = trx_cls;
	}
	public Integer getAut_lvl() {
		return aut_lvl;
	}
	public void setAut_lvl(Integer aut_lvl) {
		this.aut_lvl = aut_lvl;
	}
	public Character getTrx_sts() {
		return trx_sts;
	}
	public void setTrx_sts(Character trx_sts) {
		this.trx_sts = trx_sts;
	}
	public Character getRun_hol() {
		return run_hol;
	}
	public void setRun_hol(Character run_hol) {
		this.run_hol = run_hol;
	}
	public Character getRun_mod() {
		return run_mod;
	}
	public void setRun_mod(Character run_mod) {
		this.run_mod = run_mod;
	}
	public Character getLog_jnl() {
		return log_jnl;
	}
	public void setLog_jnl(Character log_jnl) {
		this.log_jnl = log_jnl;
	}
	public Character getHis_frm() {
		return his_frm;
	}
	public void setHis_frm(Character his_frm) {
		this.his_frm = his_frm;
	}
	public Character getHis_prt() {
		return his_prt;
	}
	public void setHis_prt(Character his_prt) {
		this.his_prt = his_prt;
	}
	public Character getAct_cha() {
		return act_cha;
	}
	public void setAct_cha(Character act_cha) {
		this.act_cha = act_cha;
	}
	public Character getAwa_flg() {
		return awa_flg;
	}
	public void setAwa_flg(Character awa_flg) {
		this.awa_flg = awa_flg;
	}
	public Character getOut_tss() {
		return out_tss;
	}
	public void setOut_tss(Character out_tss) {
		this.out_tss = out_tss;
	}
	public String getSub_trx() {
		return sub_trx;
	}
	public void setSub_trx(String sub_trx) {
		this.sub_trx = sub_trx;
	}
	public Integer getTlr_tot() {
		return tlr_tot;
	}
	public void setTlr_tot(Integer tlr_tot) {
		this.tlr_tot = tlr_tot;
	}
	public Integer getInp_fmt() {
		return inp_fmt;
	}
	public void setInp_fmt(Integer inp_fmt) {
		this.inp_fmt = inp_fmt;
	}
	public String getSkp_ctl() {
		return skp_ctl;
	}
	public void setSkp_ctl(String skp_ctl) {
		this.skp_ctl = skp_ctl;
	}
	public String getSwh_ctl() {
		return swh_ctl;
	}
	public void setSwh_ctl(String swh_ctl) {
		this.swh_ctl = swh_ctl;
	}
	public Integer getPro_cnt() {
		return pro_cnt;
	}
	public void setPro_cnt(Integer pro_cnt) {
		this.pro_cnt = pro_cnt;
	}
	public String getPro_grp() {
		return pro_grp;
	}
	public void setPro_grp(String pro_grp) {
		this.pro_grp = pro_grp;
	}
	public String getPro_cde() {
		return pro_cde;
	}
	public void setPro_cde(String pro_cde) {
		this.pro_cde = pro_cde;
	}
	public Character getErr_ext() {
		return err_ext;
	}
	public void setErr_ext(Character err_ext) {
		this.err_ext = err_ext;
	}
	public String getPro_ctl() {
		return pro_ctl;
	}
	public void setPro_ctl(String pro_ctl) {
		this.pro_ctl = pro_ctl;
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
	public String getRec_sts() {
		return rec_sts;
	}
	public void setRec_sts(String rec_sts) {
		this.rec_sts = rec_sts;
	}
	public String getTrx_nam() {
		return trx_nam;
	}
	public void setTrx_nam(String trx_nam) {
		this.trx_nam = trx_nam;
	}
	public String getTrx_snm() {
		return trx_snm;
	}
	public void setTrx_snm(String trx_snm) {
		this.trx_snm = trx_snm;
	}
	public Character getRep_flg() {
		return rep_flg;
	}
	public void setRep_flg(Character rep_flg) {
		this.rep_flg = rep_flg;
	}

	
}
