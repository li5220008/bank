package com.gtafe.constants;

import java.util.HashMap;
import java.util.Map;

public class GConstants {
        
	public static Map<String,String>ExchangeRateConstants = new HashMap<String, String>();
	public static Map<String,String>ExchangeRateUseFlag = new HashMap<String, String>();
	public static Map<String,String>ExchangeRateModifyFlag = new HashMap<String, String>();
	public static Map<String,String>ExchangeRateBiaojia = new HashMap<String, String>();
	public static Map<String,String>ExchangeRateStatus = new HashMap<String, String>();
	static{
		ExchangeRateConstants.put("1","买入价");
		ExchangeRateConstants.put("2","卖出价" );
		ExchangeRateConstants.put("3","现钞买入价" );
		ExchangeRateConstants.put("4", "中间价");
		ExchangeRateConstants.put("5", "平仓价");
		ExchangeRateConstants.put("6", "决算价");
		ExchangeRateConstants.put("7","美元内部折合价" );
		ExchangeRateConstants.put("8","人民银行基准价");
		ExchangeRateConstants.put("9","市场价" );
		ExchangeRateUseFlag.put("1","当天使用" );
		ExchangeRateUseFlag.put("S","历史" );
		
		ExchangeRateModifyFlag.put("S","无修改" );
		ExchangeRateModifyFlag.put("M","修改" );
		ExchangeRateBiaojia.put("0","直接标价");
		ExchangeRateBiaojia.put("1","间接标价" );
		ExchangeRateStatus.put("SP", "有效");
		ExchangeRateStatus.put("I","无效");
		ExchangeRateStatus.put( "D","可删除");
	}
	//汇率种类
 
   
   
}
