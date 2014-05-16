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
    
    <title>My JSP 'pifitms.jsp' starting page</title>
    
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
            <h3>展示交易码信息</h3>
             ${result }
         <table rules="rows">
           <tr>
              <td>交易码</td>
              <td>应用码</td>
              <td>交易分组码</td>
              <td>交易符</td>
              <td>交易级别</td>
              <td>更新柜员</td>
              <td>操作</td>
           </tr>
           <c:forEach items="${piftrxList}" var="piftrx">
              <tr>
                <td>${piftrx.trx_cde }</td>
	            <td>${piftrx.app_cde }</td>
	            <td>
	                ${piftrx.trx_grp } 
	            </td>
	            <td>
	                ${piftrx.trx_mmo }
	            </td>
	            <td>
	                ${piftrx.trx_cls }
	            </td>
	            <td>
	                ${piftrx.upt_tlr }
	            </td>
	            <td>
	                <a href="piftrx/edit/${piftrx.trx_cde }">修改</a>|
	                <a href="piftrx/delete/${piftrx.trx_cde }" onclick="delcfm()">删除</a>
	            </td>
            </tr>
           </c:forEach>
         </table>
       <a href="piftrx/add">新增</a>
      <a href="javascript:history.go(-1)">返回</a>
      </div>
  </body>
</html>
