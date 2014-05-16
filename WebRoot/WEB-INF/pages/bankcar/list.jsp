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
            <h3>展示银行卡信息</h3>
             ${result }
         <table rules="rows">
           <tr>
              <td>功能</td>
              <td>卡种</td>
              <td>卡介质</td>
              <td>卡别</td>
              <td>卡类</td>
              <td>银行卡名称</td>
              <td>操作</td>
           </tr>
           <c:forEach items="${bankcarList}" var="bankcar">
              <tr>
                <td>${bankcar.usage }</td>
	            <td>${bankcar.car_type }</td>
	            <td>
	                ${bankcar.car_media } 
	            </td>
	            <td>
	                ${bankcar.car_grade }
	            </td>
	            <td>
	                ${bankcar.car_class }
	            </td>
	            <td>
	                ${bankcar.car_name }
	            </td>
	            <td>
	                <a href="bankcar/edit/${bankcar.id }">修改</a>|
	                <a href="bankcar/delete/${bankcar.id }" onclick="delcfm()">删除</a>
	            </td>
            </tr>
           </c:forEach>
         </table>
       <a href="bankcar/add">新增</a>
      <a href="javascript:history.go(-1)">返回</a>
      </div>
  </body>
</html>
