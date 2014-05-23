<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <h3>修改客户关系信息</h3>
      <div><form action="cusRelations/edit" method="post" id="cusRelations">
           <input type="hidden" name="id" value="${cusRelations.id }" />
       <table>
                    <tr>
                     <td>功能</td>
                      <td>
                          <select name="usage">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="1" ${cusRelations.usage eq "1"?"selected=true":"" }>建立</option>
                           <option value="2" ${cusRelations.usage eq "2"?"selected=true":"" }>修改</option>
                           <option value="3" ${cusRelations.usage eq "3"?"selected=true":"" }>删除</option>
                           <option value="4" ${cusRelations.usage eq "4"?"selected=true":"" }>查询</option>
                           <option value="5" ${cusRelations.usage eq "5"?"selected=true":"" }>浏览</option>
                       </select>                   
                      </td>   
                      <td>客户号</td>
                      <td>
                          <input type="text" name="cus_code" value="${fn:trim(cusRelations.cus_code) }">
                      </td>                                        
                    </tr> 
                    <tr>
                      <td>客户名称</td>
                      <td>
                          <input type="text" name="cus_name" value="${fn:trim(cusRelations.cus_name) }">
                      </td>  
                      <td>对方客户号</td>
                      <td>
                          <input type="text" name="other_cus_code" value="${cusRelations.other_cus_code }">
                      </td>                     
                    </tr>
                    <tr>
                      <td>对方客户名称</td>
                      <td>
                           <input type="text" name="other_cus_name" value="${fn:trim(cusRelations.other_cus_name) }">
                      </td>  
                      <td>证件种类</td>
                      <td>
                         <input type="text" name="certificate" value="${cusRelations.certificate }"/>                       
                      </td>                     
                       </tr> 
                       <tr>
                      <td>证件号码</td>
                       <td>   
                          <input type="text" name="certificate_code" value="${fn:trim(cusRelations.certificate_code) }"/>                   
                       </td>  
                      <td>客户地址</td>
                      <td>
                           <input type="text" name="cus_address" value="${fn:trim(cusRelations.cus_address) }"/> 
                      </td>                    
                    </tr>
                 <tr>
                      <td>客户电话</td>
                      <td>
                        <input type="text" name="cus_phone" value="${fn:trim(cusRelations.cus_phone) }"/>             
                      </td>
                      <td>关系代码</td>
                      <td> 
                          <select name="relp_code">
                           <option value="" selected="selected">--请选择--</option>
                           <option value="001" ${cusRelations.relp_code eq "001"?"selected=true":"" }>董事</option>
                           <option value="901" ${cusRelations.relp_code eq "901"?"selected=true":"" }>认知董事的公司</option>
                           <option value="002" ${cusRelations.relp_code eq "002"?"selected=true":"" }>高级管理人员</option>
                           <option value="902" ${cusRelations.relp_code eq "902"?"selected=true":"" }>受管理公司</option>
                           <option value="003" ${cusRelations.relp_code eq "003"?"selected=true":"" }>控股东</option>
                           <option value="903" ${cusRelations.relp_code eq "903"?"selected=true":"" }>受控公司</option>
                           <option value="004" ${cusRelations.relp_code eq "004"?"selected=true":"" }>总公司</option>
                           <option value="904" ${cusRelations.relp_code eq "904"?"selected=true":"" }>分支公司</option>
                           <option value="005" ${cusRelations.relp_code eq "005"?"selected=true":"" }>联营公司</option>
                           <option value="905" ${cusRelations.relp_code eq "905"?"selected=true":"" }>联营控股公司</option>
                           <option value="006" ${cusRelations.relp_code eq "006"?"selected=true":"" }>少数股东</option>
                           <option value="906" ${cusRelations.relp_code eq "906"?"selected=true":"" }>少数股权公司</option>
                           <option value="007" ${cusRelations.relp_code eq "007"?"selected=true":"" }>独资出资人</option>
                           <option value="907" ${cusRelations.relp_code eq "907"?"selected=true":"" }>独资公司</option>
                           <option value="008" ${cusRelations.relp_code eq "008"?"selected=true":"" }>合伙人</option>
                           <option value="908" ${cusRelations.relp_code eq "908"?"selected=true":"" }>合伙公司</option>
                           <option value="010" ${cusRelations.relp_code eq "010"?"selected=true":"" }>夫妻（夫）</option>
                           <option value="910" ${cusRelations.relp_code eq "910"?"selected=true":"" }>夫妻（妻）</option>
                           <option value="011" ${cusRelations.relp_code eq "011"?"selected=true":"" }>子女的父母</option>
                           <option value="911" ${cusRelations.relp_code eq "911"?"selected=true":"" }>父母的子女</option>
                           <option value="012" ${cusRelations.relp_code eq "012"?"selected=true":"" }>清盘人</option>
                           <option value="912" ${cusRelations.relp_code eq "912"?"selected=true":"" }>清盘公司</option>
                           <option value="013" ${cusRelations.relp_code eq "013"?"selected=true":"" }>信托人</option>
                           <option value="913" ${cusRelations.relp_code eq "913"?"selected=true":"" }>受益人</option>
                           <option value="014" ${cusRelations.relp_code eq "014"?"selected=true":"" }>遗产承办人</option>
                           <option value="914" ${cusRelations.relp_code eq "914"?"selected=true":"" }>死亡人</option>
                           <option value="015" ${cusRelations.relp_code eq "015"?"selected=true":"" }>遗产执行人</option>
                           <option value="915" ${cusRelations.relp_code eq "915"?"selected=true":"" }>死亡人</option>
                       </select> 
                      </td>                      
                    </tr>
                <tr>
                      <td>启用日期</td>
                      <td>
                        <input type="text" name="start_code" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cusRelations.start_code }"/>" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td>                     
                    </tr>
                <tr>
                      <td>最后更新日期</td>
                      <td>
                         <input type="text" name="udt_dat" value="<fmt:formatDate pattern="yyyy-MM-dd" value="${cusRelations.udt_dat }"/>" class="Wdate" onClick="WdatePicker()"  readonly="readonly">
                      </td> 
                      <td>更新柜员</td>
                      <td>
                          <input type="text" name="udt_clr" value="${fn:trim(cusRelations.cus_code) }"/>
                      </td>                    
                    </tr>
                 <tr>
                      <td>使用状态</td>
                      <td>
                         <select name="use_status">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="Y" ${cusRelations.use_status eq "Y"?"selected=true":"" }>使用</option>
                          <option value="N" ${cusRelations.use_status eq "N"?"selected=true":"" }>当前未使用</option> 
                         </select>
                      </td>                     
                    </tr> 
                        <tr>
                      <td>记录状态</td>
                      <td>
                          <select name="rec_sts">
                          <option value="" selected="selected">--请选择--</option>
                          <option value="P" ${cusRelations.rec_sts eq "P"?"selected=true":"" }>有效</option>
                          <option value="I" ${cusRelations.rec_sts eq "I"?"selected=true":"" }>无效</option> 
                          <option value="D" ${cusRelations.rec_sts eq "D"?"selected=true":"" }>可以删除</option> 
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
