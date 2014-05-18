<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <%@include file="/WEB-INF/pages/header.jsp"%>
    <title></title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover <%--table-bordered--%> table-responsive">
                <thead>
                <tr>
                    <th>#</th>
                    <th>代码编号</th>
                    <th>代码种类</th>
                    <th>代码名称</th>
                    <th>注释</th>
                    <th>控制信息</th>
                    <th>启用日期</th>
                    <th>最后更新日期</th>
                    <th>更新柜员</th>
                    <th>使用状态</th>
                    <th>记录状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${acctOpens}" varStatus="status" var="item">
                    <tr>
                        <td>${status.count}</td>
                        <td>${item.public_code}</td>
                        <td>${item.public_type}</td>
                        <td>${item.public_name}</td>
                        <td>${item.comment}</td>
                        <td>${item.control_message}</td>
                        <td><fmt:formatDate value="${item.start_time}" pattern="yyyy-MM-dd"/></td>
                        <td><fmt:formatDate value="${item.last_time}" pattern="yyyy-MM-dd"/></td>
                        <td>${item.upt_tlr}</td>
                        <td>${item.use_status}</td>
                        <td>${item.rec_sts}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/acctOpen/info?id=${item.id}"> json </a>
                            <a href="${pageContext.request.contextPath}/acctOpen/edit?id=${item.id}"> 修改 </a>
                            <a href="${pageContext.request.contextPath}/acctOpen/delete?id=${item.id}" onclick="return delConfirm('sure to delete?')"> 删除 </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row">
        <div class="col-md-11">
        </div>
        <div class="col-md-1">
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/acctOpen/add'" class="btn btn-primary">添加</button>
        </div>
    </div>
</div>
</body>
</html>
<%@include file="/WEB-INF/pages/main.jsp"%>
