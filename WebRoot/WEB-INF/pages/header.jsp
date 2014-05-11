<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/bootstrap.min.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!-- Bootstrap core CSS -->
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/resources/js/html5shiv.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
<![endif]-->

<!--通用样式-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/style/common.css">