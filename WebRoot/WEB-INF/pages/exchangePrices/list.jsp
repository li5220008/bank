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
                    <th>兑换类别</th>
                    <th>货币名称</th>
                    <th>货币符号</th>
                    <th>汇率种类</th>
                    <th>汇率</th>
                    <th>启用时间</th>
                    <th>最后更新日期</th>
                    <th>更新柜员</th>
                    <th>记录状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${exchangeReceiptss}" varStatus="status" var="item">
                    <tr>
                        <td>${status.count}</td>
                        <td>${item.exchange_type}</td>
                        <td>${item.icon_name}</td>
                        <td>${item.icon_sign}</td>
                        <td>${item.rate_type}</td>
                        <td>${item.rate}</td>
                        <td><fmt:formatDate value="${item.start_time}" pattern="yyyy-MM-dd"/></td>
                        <td><fmt:formatDate value="${item.last_time}" pattern="yyyy-MM-dd"/></td>
                        <td>${item.udt_clr}</td>
                        <td>${item.rec_sts}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/exchangePrices/info?id=${item.id}"> json </a>
                            <a href="${pageContext.request.contextPath}/exchangePrices/edit?id=${item.id}"> 修改 </a>
                            <a href="${pageContext.request.contextPath}/exchangePrices/delete?id=${item.id}" onclick="return delConfirm('sure to delete?')"> 删除 </a>
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
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/exchangePrices/add'" class="btn btn-primary">添加</button>
        </div>
    </div>
</div>
</body>
</html>
<%@include file="/WEB-INF/pages/main.jsp"%>
