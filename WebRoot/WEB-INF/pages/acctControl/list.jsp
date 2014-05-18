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
                    <th>操作码</th>
                    <th>机构号</th>
                    <th>科目号</th>
                    <th>顺序号</th>
                    <th>账户名称</th>
                    <th>统计代码</th>
                    <th>开户范围</th>
                    <th>货币范围</th>
                    <th>细目号</th>
                    <th>允许发生方向</th>
                    <th>余额方向</th>
                    <th>账户类型</th>
                    <th>明细核算标志</th>
                    <th>借方利率代码</th>
                    <th>贷方利率代码</th>
                    <th>销账类别</th>
                    <th>销账种类</th>
                    <th>更新柜员</th>
                    <th>使用状态</th>
                    <th>记录状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${acctControls}" varStatus="status" var="item">
                    <tr>
                        <td>${status.count}</td>
                        <td>${item.ope_code}</td>
                        <td>${item.org_code}</td>
                        <td>${item.subject_code}</td>
                        <td>${item.order_code}</td>
                        <td>${item.account_name}</td>
                        <td>${item.count_code}</td>
                        <td>${item.account_limit}</td>
                        <td>${item.icon_limit}</td>
                        <td>${item.detail_code}</td>
                        <td>${item.allow_direction}</td>
                        <td>${item.remaining_direction}</td>
                        <td>${item.account_type}</td>
                        <td>${item.detail_flag}</td>
                        <td>${item.borrow_code}</td>
                        <td>${item.loan_code}</td>
                        <td>${item.destroy_type}</td>
                        <td>${item.flush_type}</td>
                        <td>${item.upt_tlr}</td>
                        <td>${item.use_status}</td>
                        <td>${item.rec_sts}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/acctControl/info?id=${item.id}"> json </a>
                            <a href="${pageContext.request.contextPath}/acctControl/edit?id=${item.id}"> 修改 </a>
                            <a href="${pageContext.request.contextPath}/acctControl/delete?id=${item.id}" onclick="return delConfirm('sure to delete?')"> 删除 </a>
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
            <button type="button" onclick="location.href='${pageContext.request.contextPath}/acctControl/add'" class="btn btn-primary">添加</button>
        </div>
    </div>
</div>
</body>
</html>
<%@include file="/WEB-INF/pages/main.jsp"%>
