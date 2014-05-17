<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
      <h3>首页</h3>  ${msg }   欢迎你，${user.username }
      <br>
         要访问的页面链接，这里自己添加吧
        <ul>
           <li><a href="pifccy">货币表操作</a></li>
           <li><a href="pifitm">科目表操作</a></li>
           <li><a href="bankcar">银行卡表操作</a></li>
           <li><a href="priceCertificate">有价单证表操作</a></li>
           <li><a href="cusRelations">客户关系表操作</a></li>
           <li><a href="pifapp">应用码表操作</a></li>
           <li><a href="piftrx">交易码表操作</a></li>
           
           
           <li><a href="<%=path %>/CountryCode/list">国家码表操作</a></li>
           <li><a href="#">假日码表操作</a></li>
           
           
           <li><a href="exchangeList.html">汇率表操作</a></li>
           <li><a href="${pageContext.request.contextPath}/pifbus/list">利率表操作</a></li>
           <li><a href="${pageContext.request.contextPath}/pifirt/list">业务码表表操作</a></li>
           <li><a href="${pageContext.request.contextPath}/countryCode/list">国家码表操作</a></li>
           <li><a href="${pageContext.request.contextPath}/publicCode/list">公用表操作</a></li>
        </ul>
  </body>
</html>
