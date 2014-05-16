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
    <h3>新增交易码信息</h3>
      <div><form action="piftrx/add" method="post" id="piftrx">
      <table>
                    <tr>
                     <td>交易码</td>
                      <td>
                          <input type="text" name="trx_cde" maxlength="6">                                  
                      </td>   
                      <td>应用码</td>
                      <td>
                          <input type="text" name="app_cde" maxlength="2">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>交易分组码</td>
                      <td>
                          <input type="text" name="trx_grp" maxlength="2">
                      </td>  
                      <td>交易组内编号</td>
                      <td>
                          <input type="text" name="txg_sno">
                      </td>                     
                    </tr>
                    <tr>
                      <td>交易描述</td>
                      <td>
                           <input type="text" name="trx_nam">
                      </td>  
                      <td>交易简称</td>
                      <td>
                         <input type="text" name="trx_snm"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>交易符</td>
                       <td>   
                          <input type="text" name="trx_mmo"/>                   
                       </td>  
                      <td>交易级别</td>
                      <td>
                           <input type="text" name="trx_cls"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>交易授权级别</td>
                      <td>
                        <input type="text" name="aut_lvl"/>             
                      </td>
                      <td>交易可用状态</td>
                      <td> 
                          <select name="trx_sts">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">可用</option>
                            <option value="N">不可用</option> 
                          </select> 
                      </td>                      
                    </tr>
                <tr>
                      <td>假期可用标志</td>
                      <td>
                        <select name="run_hol">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">可用</option>
                            <option value="N">不可用</option> 
                          </select> 
                      </td>                     
                </tr>
                <tr>
                      <td>运行模式</td>
                      <td>
                           <select name="run_mod">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="D">日间模式</option>
                            <option value="N">夜间模式</option> 
                          </select>                           
                      </td>  
                      <td>可重入标志</td>
                      <td>
                         <select name="rep_flg">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">可重入</option>
                            <option value="N">不可重入</option> 
                          </select>                      
                      </td>                     
                </tr>
                <tr>
                      <td>交易记录日志标志</td>
                      <td>
                           <select name="log_jnl">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">记日志</option>
                            <option value="N">不记日志</option> 
                          </select>
                      </td>  
                      <td>交易记录历史标志</td>
                      <td>
                          <select name="his_frm">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">记历史</option>
                            <option value="N">不记历史</option> 
                          </select>                       
                      </td>                     
                </tr>
                <tr>
                      <td>交易打印历史标志</td>
                      <td>
                           <select name="his_prt">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">打印历史</option>
                            <option value="N">不打印历史</option> 
                          </select>
                      </td>  
                      <td>更新账户链标志</td>
                      <td>
                         <select name="act_cha">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">更新账户链</option>
                            <option value="N">不更新账户链</option> 
                          </select>                      
                      </td>                     
                </tr>
                <tr>
                      <td>使用工作区AWA标志</td>
                      <td>
                           <select name="awa_flg">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y">使用</option>
                            <option value="N">不使用</option> 
                          </select>
                      </td>  
                      <td>队列输出标志</td>
                      <td>
                         <select name="out_tss">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="P">多页输出</option>
                            <option value="B">报价数据输出</option> 
                            <option value="S">印鉴输出</option> 
                          </select>                       
                      </td>                     
                </tr>
                <tr>
                      <td>后继交易码</td>
                      <td>
                           <input type="text" name="sub_trx">
                      </td>  
                      <td>柜员累计数标识</td>
                      <td>
                         <input type="text" name="tlr_tot"/>                       
                      </td>                     
                </tr>
                <tr>
                      <td>输入缓冲区格式码</td>
                      <td>
                           <input type="text" name="inp_fmt">
                      </td>  
                      <td>交易处理控制标志1</td>
                      <td>
                         <input type="text" name="skp_ctl"/>                       
                      </td>                     
                </tr>
                <tr>
                      <td>交易处理控制标志2</td>
                      <td>
                           <input type="text" name="swh_ctl">
                      </td>  
                      <td>进程计数器</td>
                      <td>
                         <input type="text" name="pro_cnt"/>                       
                      </td>                     
                </tr>

                <tr>
                      <td>处理程序及其所用控制字</td>
                      <td>
                           <input type="text" name="pro_grp">
                      </td>  
                      <td>进程码</td>
                      <td>
                         <input type="text" name="pro_cde"/>                       
                      </td>                     
                </tr>
                <tr>
                      <td>出错继续执行的标志</td>
                      <td>
                           <select name="err_ext">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="0">停止执行</option>
                            <option value="1">继续执行</option> 
                          </select>
                           
                      </td>  
                      <td>进程控制字</td>
                      <td>
                         <input type="text" name="pro_ctl"/>                       
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
