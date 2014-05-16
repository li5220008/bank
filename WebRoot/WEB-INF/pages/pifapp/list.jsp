<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName();
	
 %>
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

<body>
 <div style="width: 100%; height: 100%;">
            <h3>展示应用码表信息</h3>
             ${result }
         <table rules="rows">
           <tr>
              <td>应用码</td>
              <td>应用简称</td>
              <td>应用描述</td>
              <td>应用符</td>
              <td>应用类型</td>
              <td>更新柜员</td>
              <td>操作</td>
           </tr>
           <c:forEach items="${pifappList}" var="pifapp">
              <tr>
                <td>${pifapp.app_cde }</td>
	            <td>${pifapp.app_snm }</td>
	            <td>
	                ${pifapp.app_nam } 
	            </td>
	            <td>
	                ${pifapp.app_idt }
	            </td>
	            <td>
	                ${pifapp.app_typ }
	            </td>
	            <td>
	                ${pifapp.upt_tlr }
	            </td>
	            <td>
	                <a href="pifapp/edit/${pifapp.app_cde }" >修改</a>|
	                <a href="pifapp/delete/${pifapp.app_cde }" onclick="delcfm()">删除</a>
	            </td>
            </tr>
           </c:forEach>
         </table>
       <a href="pifapp/add">新增</a>
      <a href="javascript:history.go(-1)">返回</a>
      </div>
</body>
</html>