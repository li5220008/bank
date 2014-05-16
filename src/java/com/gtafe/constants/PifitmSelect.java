package com.gtafe.constants;

import java.util.HashMap;
import java.util.Map;


/**
 * 科目表单的下拉框数据
 * @author li.wan
 *
 */
public class  PifitmSelect {
    public static final Map<String, String> ITM_TYPS=new HashMap<String, String>();//科目类型
    public static final Map<String, String> ITM_ATRS=new HashMap<String, String>();//科目性质
    public static final Map<String, String> ITM_CLAS=new HashMap<String, String>();//科目级别
    public static final Map<String, String> YES_NOS=new HashMap<String, String>();//有Y无N
    public static final Map<String, String> BAL_DIRS=new HashMap<String, String>();//余额方向
    public static final Map<String, String> USR_FLGS=new HashMap<String, String>();//适用对象
    public static final Map<String, String> REV_FLGS=new HashMap<String, String>();//销账类别标志
    public static final Map<String, String> REV_TYPS=new HashMap<String, String>();//销账种类
    
    
    static{
    	ITM_TYPS.put("1", "资产类");
    	ITM_TYPS.put("2", "负债类");
    	ITM_TYPS.put("3", "资产负债共同类");
    	ITM_TYPS.put("4", "所有者权益类");
    	ITM_TYPS.put("5", "损益类");
    	ITM_TYPS.put("6", "或有资产或有负债类");
    	ITM_TYPS.put("9", "表外类");
    	
    	ITM_ATRS.put("A", "现金");
    	ITM_ATRS.put("B", "存款");
    	ITM_ATRS.put("C", "放款");
    	ITM_ATRS.put("D", "同业联行");
    	ITM_ATRS.put("E", "拆借");
    	ITM_ATRS.put("F", "兑换");
    	ITM_ATRS.put("G", "应暂收付");
    	ITM_ATRS.put("H", "或有资产或负债");
    	ITM_ATRS.put("I", "固定资产");
    	ITM_ATRS.put("J", "证券");
    	ITM_ATRS.put("K", "期收付");
    	
    	ITM_CLAS.put("1", "一级科目");
    	ITM_CLAS.put("2", "二级科目");
    
    	YES_NOS.put("Y", "有");
    	YES_NOS.put("N", "无");
    	
    	BAL_DIRS.put("D", "借方");
    	BAL_DIRS.put("C", "贷方");
    	BAL_DIRS.put("A", "借/贷方");
    	
    	USR_FLGS.put("0", "没有限制");
    	USR_FLGS.put("1", "允许支行使用");
    	USR_FLGS.put("2", "容许分行一级使用");
    	USR_FLGS.put("3", "容许总行一级使用");
    	      
        REV_FLGS.put("N", "非销账类科目");
        REV_FLGS.put("D", "借方销账");
        REV_FLGS.put("C", "贷方销账");
   
         REV_TYPS.put("0", "全数销账");
         REV_TYPS.put("1", "部分冲销");
    }
    
}
