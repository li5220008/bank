<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午1:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/pages/header.jsp"%>
<html>
<head>
    <%@include file="/WEB-INF/pages/header.jsp"%>
    <title></title>
</head>
<body>
      <div class="container">
          <table class="table table-hover <%--table-bordered--%> table-responsive">
              <thead>
              <tr>
                  <th>#</th>
                  <th>利率主键</th>
                  <th>货币码</th>
                  <th>利率代码</th>
                  <th>利率大类</th>
                  <th>利率细类</th>
                  <th>启用日期</th>
                  <th>利率名称</th>
                  <th>当天使用标记</th>
                  <th>当天修改标记</th>
                  <th>年利率值</th>
                  <th>浮动上限值</th>
                  <th>浮动下限值</th>
                  <th>浮动标记</th>
                  <th>借贷标记</th>
                  <th>期限单位</th>
                  <th>建档柜员</th>
                  <th>建档日期</th>
                  <th>最后更新日期</th>
                  <th>更新柜员</th>
                  <th>记录状态</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${pifirt}" varStatus="status" var="item">
                  <tr>
                      <td>${status.count}</td>
                      <td>${item.irt_key}</td>
                      <td>${item.cur_cde}</td>
                      <td>${item.irt_cde}</td>
                      <td>${item.irt_kd1}</td>
                      <td>${item.irt_kd2}</td>
                      <td>${item.eff_dat}</td>
                      <td>${item.irt_nam}</td>
                      <td>${item.cur_flg}</td>
                      <td>${item.mod_flg}</td>
                      <td>${item.irt_val}</td>
                      <td>${item.irt_sph}</td>
                      <td>${item.irt_spl}</td>
                      <td>${item.spr_flg}</td>
                      <td>${item.cdr_flg}</td>
                      <td>${item.irt_trm}</td>
                      <td>${item.trm_unt}</td>
                      <td>${item.cre_tlr}</td>
                      <td>${item.cre_dat}</td>
                      <td>${item.upt_dat}</td>
                      <td>${item.upt_tlr}</td>
                      <td>${item.rec_sts}</td>
                      <td>
                          <a href="${pageContext.request.contextPath}/pifirt/info?id=${item.irt_key}"> info </a>
                          <a href="${pageContext.request.contextPath}/pifirt/add"> add </a>
                          <a href="${pageContext.request.contextPath}/pifirt/update?id=${item.irt_key}"> update </a>
                          <a href="${pageContext.request.contextPath}/pifirt/delete?id=${item.irt_key}" onclick="return delConfirm('sure to delete?')"> delete </a>
                      </td>
                  </tr>
              </c:forEach>
              </tbody>
          </table>
      </div>
</body>
</html>
<%@include file="/WEB-INF/pages/main.jsp"%>
