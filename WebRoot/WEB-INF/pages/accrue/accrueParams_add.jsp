<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <%@include file="/WEB-INF/pages/header.jsp"%>
    <%@include file="/WEB-INF/pages/main.jsp"%>
    <title></title>
</head>
<body>
    <div class="container">
        <form class="form-horizontal" action="addAccrueParams" method="post" role="form">
            <div class="form-group">
                <label for="ope_code" class="col-sm-1">操作螞</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="ope_code" id="ope_code" placeholder="操作碼">
                </div>

                <label for="org_code" class="col-sm-1">机构号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="org_code" id="app_cde" placeholder="机构号">
                </div>

                <label for="acc_type" class="col-sm-1">计提种类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="acc_type" id="acc_type" placeholder="计提种类">
                </div>
            </div>

            <div class="form-group">
          

                <label for="acc_name" class="col-sm-1">计提名称</label>
                <div class="col-sm-3">
                    <textarea class="form-control" name="acc_name" id="acc_name" placeholder="计提名称" rows="3" ></textarea>
                </div>

                <label for="bak_account" class="col-sm-1">备抵账号</label>
                <div class="col-sm-3">
                    <input type="text"  class="form-control" name="bak_account" id="bak_account" placeholder="备抵账号">
                </div>
                      <label for="acc_percent" class="col-sm-1">计提比例</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="acc_percent" id="acc_percent" placeholder="计提比例">
                </div>
            </div>

            <div class="form-group">
            <label for="ope_flag" class="col-sm-1">处理标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="ope_flag" id="ope_flag" placeholder="处理标志">
                </div>
                <label for="count_date" class="col-sm-1">记账日期</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="count_date" id="count_date" placeholder="记账日期">
                </div>

                <label for="REC_STS" class="col-sm-1">记录状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="REC_STS" id="REC_STS" placeholder="记录状态">
                </div>

                
            </div>

            <div class="form-group">
                <div class="col-sm-9"></div>
                <div class="col-sm-3">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
