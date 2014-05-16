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
    <h3>修改有价单证信息</h3>
      <div><form action="priceCertificate/edit" method="post" id="priceCertificate">
           <input type="hidden" name="id" value="${priceCertificate.id }" />
        <table>
                    <tr>
                     <td>功能</td>
                      <td>
                          <select name="usage">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="1" ${priceCertificate.usage eq "1"?"selected=true":"" }>建立</option>
                           <option value="2" ${priceCertificate.usage eq "2"?"selected=true":"" }>修改</option>
                           <option value="3" ${priceCertificate.usage eq "3"?"selected=true":"" }>删除</option>
                           <option value="4" ${priceCertificate.usage eq "4"?"selected=true":"" }>查询</option>
                           <option value="5" ${priceCertificate.usage eq "5"?"selected=true":"" }>浏览</option>
                       </select>                   
                      </td>   
                      <td>单证代码</td>
                      <td>
                          <input type="text" name="price_code" value="${priceCertificate.price_code }">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>单证名称</td>
                      <td>
                          <input type="text" name="price_name" value="${priceCertificate.price_name }">
                      </td>  
                      <td>币种</td>
                      <td>
                          <input type="text" name="coin" value="${priceCertificate.coin }">
                      </td>                     
                    </tr>
                    <tr>
                      <td>期限</td>
                      <td>
                           <input type="text" name="timelimit" value="${priceCertificate.timelimit }">
                      </td>  
                      <td>单证种类</td>
                      <td>
                         <select name="price_type">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${priceCertificate.price_type eq "0"?"selected=true":"" }>旅行支票</option>
                           <option value="1" ${priceCertificate.price_type eq "1"?"selected=true":"" }>各类券单</option>
                           <option value="2" ${priceCertificate.price_type eq "2"?"selected=true":"" }>未签发本票</option>
                           <option value="3" ${priceCertificate.price_type eq "3"?"selected=true":"" }>其他</option>
                          </select>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>是否控号</td>
                       <td>   
                          <select name="is_contrl">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${priceCertificate.is_contrl eq "0"?"selected=true":"" }>无号</option>
                           <option value="1" ${priceCertificate.is_contrl eq "1"?"selected=true":"" }>有号不控</option>
                           <option value="2" ${priceCertificate.is_contrl eq "2"?"selected=true":"" }>有号控号</option>
                          </select>                   
                       </td>  
                      <td>计数单位</td>
                      <td>
                          <select name="count_unit">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${priceCertificate.count_unit eq "0"?"selected=true":"" }>按本记</option>
                           <option value="1" ${priceCertificate.count_unit eq "1"?"selected=true":"" }>按涨记</option>
                          </select>
                      </td>                    
                    </tr>
                 <tr>
                      <td>单位分数</td>
                      <td>
                        <input type="text" name="unit_num" value="${priceCertificate.unit_num }"/>             
                      </td>
                      <td>抹账标志</td>
                      <td> 
                         <td>
                          <select name="flush_flag">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${priceCertificate.flush_flag eq "0"?"selected=true":"" }>抹账</option>
                           <option value="1" ${priceCertificate.flush_flag eq "1"?"selected=true":"" }>不抹账</option>
                       </select> 
                      </td>                      
                    </tr>
                <tr>
                      <td>有效标志</td>
                      <td>
                        <select name="valid_flag">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="0" ${priceCertificate.valid_flag eq "0"?"selected=true":"" }>有效</option>
                           <option value="1" ${priceCertificate.valid_flag eq "1"?"selected=true":"" }>无效</option>
                        </select> 
                      </td>
                      <td>启用日期</td>
                      <td>
                        <input type="text" name="start_time" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${priceCertificate.start_time }"/>" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td>                     
                    </tr>
                <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="last_time" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${priceCertificate.last_time }"/>" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="udt_clr" value="${priceCertificate.udt_clr }"/>
                      </td>                    
                    </tr>
                 <tr>
                      <td>使用状态</td>
                      <td>
                         <select name="use_status">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${priceCertificate.use_status eq "Y"?"selected=true":"" }>使用</option>
                          <option value="N" ${priceCertificate.use_status eq "N"?"selected=true":"" }>当前未使用</option> 
                         </select>
                      </td>                     
                    </tr> 
                        <tr>
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P" ${priceCertificate.rec_sts eq "P"?"selected=true":"" }>有效</option>
                          <option value="I" ${priceCertificate.rec_sts eq "I"?"selected=true":"" }>无效</option> 
                          <option value="D" ${priceCertificate.rec_sts eq "D"?"selected=true":"" }>可以删除</option> 
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
