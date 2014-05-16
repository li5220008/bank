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
      <div><form action="bankcar/add" method="post" id="bankcar">
      <table>
                    <tr>
                     <td>功能</td>
                      <td>
                          <select name="usage">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="1">建立</option>
                           <option value="2">修改</option>
                           <option value="3">删除</option>
                           <option value="4">查询</option>
                           <option value="5">浏览</option>
                       </select>
                      
                      </td>   
                      <td>卡种</td>
                      <td>
                       <select name="car_type">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0">万事达卡</option>
                           <option value="1">威士信用卡</option>
                           <option value="2">万事顺卡</option>
                           <option value="3">互连卡</option>
                           <option value="4">VE 卡</option>
                           <option value="5">VISX卡</option>
                       </select>
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>卡介质</td>
                      <td>
                       <select name="car_media">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="0">磁条非彩卡</option>
                           <option value="1">磁条彩卡</option>
                           <option value="2">IC 非彩 卡</option>
                           <option value="3">IC 彩卡</option>
                       </select>
                      </td>  
                      <td>卡别</td>
                      <td>
                          <select name="car_grade">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="0">一般卡</option>
                           <option value="1">联名卡</option>
                           <option value="2">认同卡</option>
                           <option value="3">世界 杯</option>
                           <option value="4">公务员卡</option>                        
                       </select>
                      </td>                     
                    </tr>
                    <tr>
                      <td>卡类</td>
                      <td>
                          <select name="car_class">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0">普通卡</option>
                           <option value="2">金卡</option>
                       </select>
                      </td>  
                      <td>银行卡名称</td>
                      <td>
                         <input type="text" name="car_name"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>有效状态</td>
                       <td>
                           <select name=""car_status"">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0">有效</option>
                           <option value="1">无效</option>
                           </select>
                             
                       </td>  
                      <td>信用等级</td>
                      <td>
                           <input type="text" name="credit_grade"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>年费</td>
                      <td>
                        <input type="text" name="year_fee"/>             
                      </td>
                      <td>附属卡张数</td>
                      <td>
                         <input type="text" name="attached_num"/>   
                      </td>                      
                    </tr>
                <tr>
                      <td>归属凭证代码</td>
                      <td>
                         <input type="text" name="attached_code"/>
                      </td>
                      <td>启用日期</td>
                      <td>
                        <input type="text" name="start_time" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
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
                      <td>使用状态</td>
                      <td>
                         <select name="use_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y">使用</option>
                          <option value="N">当前未使用</option> 
                         </select>
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
