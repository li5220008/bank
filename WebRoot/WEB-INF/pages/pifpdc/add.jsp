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
    <h3>新增产品码</h3>
      <div><form action="pifpdc/add" method="post" id="pifpdc">
      <table>
                    <tr>
                     <td>产品码</td>
                      <td>
                          <input type="text" name="prd_cde" maxlength="6">                   
                      </td>
                      <td>业务码</td>
                      <td>
                          <input type="text" name="bus_cde" maxlength="3">
                      </td>  
                     </tr>   
                    <tr> 
                      <td>产品业务类别</td>
                      <td>
                          <input type="text" name="prd_bus" maxlength="3">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>产品编号</td>
                      <td>
                          <input type="text" name="prd_num" maxlength="3">
                      </td>  
                      <td>产品描述</td>
                      <td>
                          <input type="text" name="prd_nam">
                      </td>                     
                    </tr>
                    <tr>
                      <td>产品简介</td>
                      <td>
                           <input type="text" name="prd_snm">
                      </td>  
                      <td>产品符</td>
                      <td>
                         <input type="text" name="prd_idt"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>产品有效期</td>
                       <td>   
                          <input type="text" name="prd_val" class="Wdate" onClick="WdatePicker()"  readonly="readonly"/>                   
                       </td>  
                      <td>产品核算科目</td>
                      <td>
                           <input type="text" name="prd_itm" maxlength="4"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>产品价格类别</td>
                      <td>
                        <input type="text" name="prd_pri" maxlength="2"/>             
                      </td>
                      <td>产品费用类别</td>
                      <td> 
                          <input type="text" name="prd_fee" maxlength="2"/> 
                      </td>                      
                    </tr>
                    <tr>
                      <td>产品收益类别</td>
                       <td>   
                          <input type="text" name="prd_prf" maxlength="2"/>                   
                       </td>  
                      <td>产品服务类别</td>
                      <td>
                           <input type="text" name="prd_sev" maxlength="2"/> 
                      </td>                    
                    </tr>
                    <tr>
                      <td>产品期限类别</td>
                       <td>   
                          <input type="text" name="prd_trm" maxlength="2"/>                   
                       </td>  
                      <td>产品限制类别</td>
                      <td>
                           <input type="text" name="prd_ris" maxlength="2"/> 
                      </td>                    
                    </tr>
                    <tr>
                      <td>产品规则类别</td>
                       <td>   
                          <input type="text" name="prd_rul" maxlength="2"/>                   
                       </td>  
                      <td>产品适用货币类别</td>
                      <td>
                           <input type="text" name="prd_ccy" maxlength="2"/> 
                      </td>                    
                    </tr>
                    <tr>
                      <td>产品适用客户类别</td>
                       <td>   
                          <input type="text" name="prd_cus" maxlength="2"/>                   
                       </td>  
                      <td>该产品风险权数</td>
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
