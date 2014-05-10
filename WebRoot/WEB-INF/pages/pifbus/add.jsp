<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/pages/header.jsp"%>
<html>
<head>
    <title></title>
</head>
<body>
    <div class="container">
        <form class="form-horizontal" action="${pageContext.request.contextPath}/pifbus/addDo" method="post" role="form">
            <div class="form-group">
                <label for="bus_code" class="col-sm-1">业务码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="bus_code" placeholder="业务码">
                </div>

                <label for="app_code" class="col-sm-1">应用码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="app_code" placeholder="应用码">
                </div>

                <label for="bus_itm" class="col-sm-1">对应的核算科目号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="bus_itm" placeholder="对应的核算科目号">
                </div>
            </div>

            <div class="form-group">
                <label for="bus_app" class="col-sm-1">对应的应用码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="bus_app" placeholder="对应的应用码">
                </div>

                <label for="bus_nam" class="col-sm-1">业务描述</label>
                <div class="col-sm-3">
                    <textarea class="form-control" id="bus_nam" placeholder="业务描述" rows="3" ></textarea>
                </div>

                <label for="upt_dat" class="col-sm-1">最后更新日期</label>
                <div class="col-sm-3">
                    <input type="text" onclick="WdatePicker()" class="form-control" id="upt_dat" placeholder="最后更新日期">
                </div>
            </div>

            <div class="form-group">
                <label for="upt_tlr" class="col-sm-1">更新柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="upt_tlr" placeholder="更新柜员">
                </div>

                <label for="bus_kd1" class="col-sm-1">业务大类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="bus_kd1" placeholder="业务大类">
                </div>

                <label for="bus_kd2" class="col-sm-1">业务小类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="bus_kd2" placeholder="业务小类">
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
<%@include file="/WEB-INF/pages/main.jsp"%>