<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <h3>修改交易码信息</h3>
      <div><form action="piftrx/edit" method="post" id="piftrx">
       <table>
                    <tr>
                     <td>交易码</td>
                      <td>
                          <input type="text" name="trx_cde" value="${piftrx.trx_cde }">                                  
                      </td>   
                      <td>应用码</td>
                      <td>
                          <input type="text" name="app_cde" value="${piftrx.app_cde }">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>交易分组码</td>
                      <td>
                          <input type="text" name="trx_grp" value="${piftrx.trx_grp }">
                      </td>  
                      <td>交易组内编号</td>
                      <td>
                          <input type="text" name="txg_sno" value="${piftrx.txg_sno }">
                      </td>                     
                    </tr>
                    <tr>
                      <td>交易描述</td>
                      <td>
                           <input type="text" name="trx_nam" value="${piftrx.trx_nam }">
                      </td>  
                      <td>交易简称</td>
                      <td>
                         <input type="text" name="trx_snm" value="${piftrx.trx_snm }"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>交易符</td>
                       <td>   
                          <input type="text" name="trx_mmo" value="${piftrx.trx_mmo }"/>                   
                       </td>  
                      <td>交易级别</td>
                      <td>
                           <input type="text" name="trx_cls" value="${piftrx.trx_cls }"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>交易授权级别</td>
                      <td>
                        <input type="text" name="aut_lvl" value="${piftrx.aut_lvl }"/>             
                      </td>
                      <td>交易可用状态</td>
                      <td> 
                          <select name="trx_sts">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.trx_sts eq "Y"?"selected=true":"" }>可用</option>
                            <option value="N" ${piftrx.trx_sts eq "N"?"selected=true":"" }>不可用</option> 
                          </select> 
                      </td>                      
                    </tr>
                <tr>
                      <td>假期可用标志</td>
                      <td>
                        <select name="run_hol">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.run_hol eq "Y"?"selected=true":"" }>可用</option>
                            <option value="N" ${piftrx.run_hol eq "N"?"selected=true":"" }>不可用</option> 
                          </select> 
                      </td>                     
                </tr>
                <tr>
                      <td>运行模式</td>
                      <td>
                           <select name="run_mod">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="D" ${piftrx.run_mod eq "D"?"selected=true":"" }>日间模式</option>
                            <option value="N" ${piftrx.run_mod eq "N"?"selected=true":"" }>夜间模式</option> 
                          </select>                           
                      </td>  
                      <td>可重入标志</td>
                      <td>
                         <select name="rep_flg">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.rep_flg eq "Y"?"selected=true":"" }>可重入</option>
                            <option value="N" ${piftrx.rep_flg eq "N"?"selected=true":"" }>不可重入</option> 
                          </select>                      
                      </td>                     
                </tr>
                <tr>
                      <td>交易记录日志标志</td>
                      <td>
                           <select name="log_jnl">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.log_jnl eq "Y"?"selected=true":"" }>记日志</option>
                            <option value="N" ${piftrx.log_jnl eq "N"?"selected=true":"" }>不记日志</option> 
                          </select>
                      </td>  
                      <td>交易记录历史标志</td>
                      <td>
                          <select name="his_frm">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.his_frm eq "Y"?"selected=true":"" }>记历史</option>
                            <option value="N" ${piftrx.his_frm eq "N"?"selected=true":"" }>不记历史</option> 
                          </select>                       
                      </td>                     
                </tr>
                <tr>
                      <td>交易打印历史标志</td>
                      <td>
                           <select name="his_prt">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.his_prt eq "Y"?"selected=true":"" }>打印历史</option>
                            <option value="N" ${piftrx.his_prt eq "N"?"selected=true":"" }>不打印历史</option> 
                          </select>
                      </td>  
                      <td>更新账户链标志</td>
                      <td>
                         <select name="act_cha">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.act_cha eq "Y"?"selected=true":"" }>更新账户链</option>
                            <option value="N" ${piftrx.act_cha eq "N"?"selected=true":"" }>不更新账户链</option> 
                          </select>                      
                      </td>                     
                </tr>
                <tr>
                      <td>使用工作区AWA标志</td>
                      <td>
                           <select name="awa_flg">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="Y" ${piftrx.awa_flg eq "Y"?"selected=true":"" }>使用</option>
                            <option value="N" ${piftrx.awa_flg eq "N"?"selected=true":"" }>不使用</option> 
                          </select>
                      </td>  
                      <td>队列输出标志</td>
                      <td>
                         <select name="out_tss">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="P" ${piftrx.out_tss eq "P"?"selected=true":"" }>多页输出</option>
                            <option value="B" ${piftrx.out_tss eq "B"?"selected=true":"" }>报价数据输出</option> 
                            <option value="S" ${piftrx.out_tss eq "S"?"selected=true":"" }>印鉴输出</option> 
                          </select>                       
                      </td>                     
                </tr>
                <tr>
                      <td>后继交易码</td>
                      <td>
                           <input type="text" name="sub_trx" value="${piftrx.sub_trx }">
                      </td>  
                      <td>柜员累计数标识</td>
                      <td>
                         <input type="text" name="tlr_tot" value="${piftrx.tlr_tot }"/>                       
                      </td>                     
                </tr>
                <tr>
                      <td>输入缓冲区格式码</td>
                      <td>
                           <input type="text" name="inp_fmt" value="${piftrx.inp_fmt }">
                      </td>  
                      <td>交易处理控制标志1</td>
                      <td>
                         <input type="text" name="skp_ctl" value="${piftrx.skp_ctl }"/>                       
                      </td>                     
                </tr>
                <tr>
                      <td>交易处理控制标志2</td>
                      <td>
                           <input type="text" name="swh_ctl" value="${piftrx.swh_ctl }">
                      </td>  
                      <td>进程计数器</td>
                      <td>
                         <input type="text" name="pro_cnt" value="${piftrx.pro_cnt }"/>                       
                      </td>                     
                </tr>

                <tr>
                      <td>处理程序及其所用控制字</td>
                      <td>
                           <input type="text" name="pro_grp" value="${piftrx.pro_grp }">
                      </td>  
                      <td>进程码</td>
                      <td>
                         <input type="text" name="pro_cde" value="${piftrx.pro_cde }"/>                       
                      </td>                     
                </tr>
                <tr>
                      <td>出错继续执行的标志</td>
                      <td>
                           <select name="err_ext">
                            <option value="" selected="selected">--请选择--</option>
                            <option value="0" ${piftrx.err_ext eq "0"?"selected=true":"" }>停止执行</option>
                            <option value="1" ${piftrx.err_ext eq "1"?"selected=true":"" }>继续执行</option> 
                          </select>
                           
                      </td>  
                      <td>进程控制字</td>
                      <td>
                         <input type="text" name="pro_ctl" value="${piftrx.pro_ctl }"/>                       
                      </td>                     
                </tr>
                <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="upt_dat" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${piftrx.upt_dat }"/>" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="upt_tlr" value="${piftrx.upt_tlr }"/>
                      </td>                    
                    </tr>
                   <tr>
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P" ${piftrx.rec_sts eq "P"?"selected=true":"" }>有效</option>
                          <option value="I" ${piftrx.rec_sts eq "I"?"selected=true":"" }>无效</option> 
                          <option value="D" ${piftrx.rec_sts eq "D"?"selected=true":"" }>可以删除</option> 
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
