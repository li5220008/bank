<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.gtafe.constants.PifitmSelect;"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>有价单证信息展示页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
td{
 border:#cccccc solid;border-width:0 1 1 0; width: 100px;
}
table{
 border:#cccccc solid;border-width:1 0 0 1;margin: 0 auto; width: 980px;
}
</style>
 <script type="text/javascript">
   function delcfm(){
    if(!confirm("确认要删除吗？")){
       window.event.returnValue=false;
    }
   }
</script>
  </head>
  
  <body>
       <div style="width: 100%; height: 100%;">
            <h3>展示有价单证信息</h3>
             ${result }
         <table rules="rows">
           <tr>
              <td>功能</td>
              <td>单证代码</td>
              <td>单证名称</td>
              <td>币种</td>
              <td>单证种类</td>
              <td>更新柜员</td>
              <td>操作</td>
           </tr>
           <c:forEach items="${priceCertificateList}" var="priceCertificate">
              <tr>
                <td>${priceCertificate.usage }</td>
	            <td>${priceCertificate.price_code }</td>
	            <td>
	                ${priceCertificate.price_name } 
	            </td>
	            <td>
	                ${priceCertificate.coin }
	            </td>
	            <td>
	                ${priceCertificate.price_type }
	            </td>
	            <td>
	                ${priceCertificate.udt_clr }
	            </td>
	            <td>
	                <a href="priceCertificate/edit/${priceCertificate.id }">修改</a>|
	                <a href="priceCertificate/delete/${priceCertificate.id }" onclick="delcfm()">删除</a>
	            </td>
            </tr>
           </c:forEach>
         </table>
       <a href="priceCertificate/add">新增</a>
      <a href="javascript:history.go(-1)">返回</a>
      </div>
  </body>
</html>
