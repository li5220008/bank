<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pifitm_add.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/My97DatePicker/WdatePicker.js></script>
<script type="text/javascript" src=${pageContext.request.contextPath}/resources/js/jquery-1.4.2.min.js></script>
  </head>
  
  <body>
    <h3>新增银行卡</h3>
      <div><form action="pifprd/add" method="post" id="pifprd">
      <table>
                    <tr>
                     <td>发行产品号</td>
                      <td>
                         <input type="text" name="prd_sal">                 
                      </td>   
                      <td>产品码</td>
                      <td>
                          <input type="text" name="prd_cde">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>产品业务类别</td>
                      <td>
                          <input type="text" name="prd_bus">
                      </td>  
                      <td>产品编号</td>
                      <td>
                          <input type="text" name="prd_num">
                      </td>                     
                    </tr>
                    <tr>
                      <td>产品发行日期</td>
                      <td>
                           <input type="text" name="prd_dat">
                      </td>  
                      <td>产品发行年内期数</td>
                      <td>
                         <input type="text" name="prd_yno"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>产品对外标题</td>
                       <td>   
                          <input type="text" name="prd_ttl"/>                   
                       </td>  
                      <td>产品价格????</td>
                      <td>
                           <input type="text" /> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>起购金额</td>
                      <td>
                        <input type="text" name="srt_amt"/>             
                      </td>
                      <td>增购金额</td>
                      <td> 
                        <input type="text" name="inc_amt"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>确定分量</td>
                      <td>
                        <input type="text" name="quo_amt"/>             
                      </td>
                      <td>产品费用?????</td>
                      <td> 
                        <input type="text" />  
                      </td>                      
                    </tr>
                     <tr>
                      <td>管理费率</td>
                      <td>
                        <input type="text" name="mng_frt"/>             
                      </td>
                      <td>赎回费率</td>
                      <td> 
                        <input type="text" name="rdm_frt"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>服务费1</td>
                      <td>
                        <input type="text" name="srv_fe1"/>             
                      </td>
                      <td>服务费2</td>
                      <td> 
                        <input type="text" name="srv_fe2"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>产品收益????</td>
                      <td>
                        <input type="text"/>             
                      </td>
                      <td>预计年收益率</td>
                      <td> 
                        <input type="text" name="yrt_rat"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>固定利率</td>
                      <td>
                        <input type="text" name="int_rat"/>             
                      </td>
                      <td>浮动利率</td>
                      <td> 
                        <input type="text" name="fin_rat"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>汇率点差</td>
                      <td>
                        <input type="text" name="frt_spd"/>             
                      </td>
                      <td>产品服务????</td>
                      <td> 
                        <input type="text"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>自动续期</td>
                      <td>
                        <input type="radio" name="aut_ext"  value="0" checked="checked"/>不提供  
                        <input type="radio" name="aut_ext"  value="1"/>提供  
                      </td>
                      <td>自动转账</td>
                      <td> 
                        <input type="radio" name="aut_tra"  value="0" checked="checked"/>不提供 
                        <input type="radio" name="aut_tra"  value="1"/>提供 
                      </td>                      
                    </tr>
                     <tr>
                      <td>实时通知</td>
                      <td>
                        <input type="radio" name="ral_adv"  value="0" checked="checked"/>不提供 
                        <input type="radio" name="ral_adv"  value="1"/>提供         
                      </td>
                      <td>寄送账单</td>
                      <td> 
                        <input type="radio" name="stm_mal"  value="0" checked="checked"/>不提供 
                        <input type="radio" name="stm_mal"  value="1"/>提供  
                      </td>                      
                    </tr>
                     <tr>
                      <td>试用安全工具</td>
                      <td> 
                        <input type="radio" name="saf_hlp"  value="0" checked="checked"/>不提供 
                        <input type="radio" name="saf_hlp"  value="1"/>提供             
                      </td>
                      <td>产品期限????</td>
                      <td> 
                        <input type="text" />  
                      </td>                      
                    </tr>
                     <tr>
                      <td>募集止日</td>
                      <td>
                        <input type="text" name="rst_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly"/>             
                      </td>
                      <td>起息日</td>
                      <td> 
                        <input type="text" name="val_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>到期日</td>
                      <td>
                        <input type="text" name="due_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly"/>             
                      </td>
                      <td>到帐日</td>
                      <td> 
                        <input type="text" name="act_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>最大续期数</td>
                      <td>
                        <input type="text" name="max_ext" maxlength="3"/>             
                      </td>
                      <td>产品限制????</td>
                      <td> 
                        <input type="text"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>终止权利</td>
                      <td> 
                        <select name="stp_rgt">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="1">双方无</option>
                          <option value="2">双方有</option> 
                          <option value="3">银行有但客户无</option> 
                          <option value="4">客户有但银行无</option> 
                         </select>                                   
                      </td>
                      <td>赎回权利</td>
                      <td> 
                        <input type="text" name="rdm_rgt"/>
                        <select name="rdm_rgt">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="1">不可</option>
                          <option value="2">可</option> 
                          <option value="3">定期</option> 
                         </select>   
                      </td>                      
                    </tr>
                     <tr>
                      <td>产品规则????</td>
                      <td>
                        <input type="text"/>             
                      </td>
                      <td>规则编码1</td>
                      <td> 
                        <input type="text" name="prd_rl1"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>规则编码2</td>
                      <td>
                        <input type="text" name="prd_rl2"/>             
                      </td>
                      <td>规则编码3</td>
                      <td> 
                        <input type="text" name="prd_rl3"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>产品适用货币</td>
                      <td>
                        <input type="text" name="prd_ccy"/>             
                      </td>
                      <td>产品适用客户</td>
                      <td> 
                        <input type="text" name="prd_cus"/>  
                      </td>                      
                    </tr>
                     <tr>
                      <td>产品风险权数</td>
                      <td>
                        <input type="text" name="prd_rsk"/>             
                      </td>
                      </tr>                    
                <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="upt_dat" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="upt_tlr"/>
                      </td>                    
                    </tr>
                
                        <tr>
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P">有效</option>
                          <option value="I">无效</option> 
                          <option value="D">可以删除</option> 
                         </select>
                      </td>                                        
                    </tr>                    
                     <tr>
                      <td rowspan="2"><input type="submit" value="提交"/><input type="button" value="返回" onclick="javascript:history.go(-1);"/></td>                     
                    </tr>        
                </table>
          </form>
      </div>
  </body>
</html>
