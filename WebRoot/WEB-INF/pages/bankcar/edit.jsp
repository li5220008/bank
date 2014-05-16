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
    <h3>修改银行信息</h3>
      <div><form action="bankcar/edit" method="post" id="bankcar">
           <input type="hidden" name="id" value="${bankcar.id }" />
       <table>
                    <tr>
                     <td>功能</td>
                      <td>
                          <select name="usage">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="1" ${bankcar.usage eq "1"?"selected=true":"" }>建立</option>
                           <option value="2" ${bankcar.usage eq "2"?"selected=true":"" }>修改</option>
                           <option value="3" ${bankcar.usage eq "3"?"selected=true":"" }>删除</option>
                           <option value="4" ${bankcar.usage eq "4"?"selected=true":"" }>查询</option>
                           <option value="5" ${bankcar.usage eq "5"?"selected=true":"" }>浏览</option>
                       </select>                     
                      </td>   
                      <td>卡种</td>
                      <td>
                       <select name="car_type">
                           <option value="" >--请选择--</option>
                           <option value="0" ${bankcar.car_type eq "0"?"selected=true":"" }>万事达卡</option>
                           <option value="1" ${bankcar.car_type eq "1"?"selected=true":"" }>威士信用卡</option>
                           <option value="2" ${bankcar.car_type eq "2"?"selected=true":"" }>万事顺卡</option>
                           <option value="3" ${bankcar.car_type eq "3"?"selected=true":"" }>互连卡</option>
                           <option value="4" ${bankcar.car_type eq "4"?"selected=true":"" }>VE 卡</option>
                           <option value="5" ${bankcar.car_type eq "5"?"selected=true":"" }>VISX卡</option>
                       </select>
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>卡介质</td>
                      <td>
                       <select name="car_media">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${bankcar.car_media eq "0"?"selected=true":"" }>磁条非彩卡</option>
                           <option value="1" ${bankcar.car_media eq "1"?"selected=true":"" }>磁条彩卡</option>
                           <option value="2" ${bankcar.car_media eq "2"?"selected=true":"" }>IC 非彩 卡</option>
                           <option value="3" ${bankcar.car_media eq "3"?"selected=true":"" }>IC 彩卡</option>
                       </select>
                      </td>  
                      <td>卡别</td>
                      <td>
                          <select name="car_grade">
                            <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${bankcar.car_grade eq "0"?"selected=true":"" }>一般卡</option>
                           <option value="1" ${bankcar.car_grade eq "1"?"selected=true":"" }>联名卡</option>
                           <option value="2" ${bankcar.car_grade eq "2"?"selected=true":"" }>认同卡</option>
                           <option value="3" ${bankcar.car_grade eq "3"?"selected=true":"" }>世界 杯</option>
                           <option value="4" ${bankcar.car_grade eq "4"?"selected=true":"" }>公务员卡</option>                        
                       </select>
                      </td>                     
                    </tr>
                    <tr>
                      <td>卡类</td>
                      <td>
                          <select name="car_class">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${bankcar.car_class eq "0"?"selected=true":"" }>普通卡</option>
                           <option value="2" ${bankcar.car_class eq "2"?"selected=true":"" }>金卡</option>
                       </select>
                      </td>  
                      <td>银行卡名称</td>
                      <td>
                         <input type="text" name="car_name"  value="${bankcar.car_name }"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>有效状态</td>
                       <td>
                           <select name="car_status">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${bankcar.car_status eq "0"?"selected=true":"" }>有效</option>
                           <option value="1" ${bankcar.car_status eq "2"?"selected=true":"" }>无效</option>
                           </select>
                             
                       </td>  
                      <td>信用等级</td>
                      <td>
                           <input type="text" name="credit_grade" value="${bankcar.credit_grade }"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>年费</td>
                      <td>
                        <input type="text" name="year_fee"  value="${bankcar.year_fee }"/>             
                      </td>
                      <td>附属卡张数</td>
                      <td>
                         <input type="text" name="attached_num"  value="${bankcar.attached_num }"/>   
                      </td>                      
                    </tr>
                <tr>
                      <td>归属凭证代码</td>
                      <td>
                         <input type="text" name="attached_code"  value="${bankcar.attached_code }"/>
                      </td>
                      <td>启用日期</td>
                      <td>
                        <input type="text" name="start_time" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${bankcar.start_time }"/>" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td>                     
                    </tr>
                <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="upt_dat" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${bankcar.upt_dat }"/>" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="upt_tlr" value="${bankcar.upt_tlr }"/>
                      </td>                    
                    </tr>
                 <tr>
                      <td>使用状态</td>
                      <td>
                         <select name="use_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${bankcar.use_sts eq "Y"?"selected=true":"" }>使用</option>
                          <option value="N" ${bankcar.use_sts eq "N"?"selected=true":"" }>当前未使用</option> 
                         </select> 
                      </td>                     
                    </tr> 
                        <tr>
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P" ${bankcar.rec_sts eq "P"?"selected=true":"" }>有效</option>
                          <option value="I" ${bankcar.rec_sts eq "I"?"selected=true":"" }>无效</option> 
                          <option value="D" ${bankcar.rec_sts eq "D"?"selected=true":"" }>可以删除</option> 
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
