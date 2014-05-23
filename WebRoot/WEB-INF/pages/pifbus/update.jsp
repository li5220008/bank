<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <%@include file="/WEB-INF/pages/header.jsp"%>
    <title></title>
</head>
<body>
<div class="container">
    <form class="form-horizontal" id="pifbusForm" action="${pageContext.request.contextPath}/pifbus/updateDo" method="post" role="form">
        <div class="form-group">
            <label for="bus_cde" class="col-sm-1">业务码</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifbus.bus_cde}" name="bus_cde" id="bus_cde" placeholder="业务码">
            </div>

            <label for="app_cde" class="col-sm-1">应用码</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifbus.app_cde}" name="app_cde" id="app_cde" placeholder="应用码">
            </div>

            <label for="bus_itm" class="col-sm-1">对应的核算科目号</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifbus.bus_itm}" name="bus_itm" id="bus_itm" placeholder="对应的核算科目号">
            </div>
        </div>

        <div class="form-group">
            <label for="bus_app" class="col-sm-1">对应的应用码</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifbus.bus_app}" name="bus_app" id="bus_app" placeholder="对应的应用码">
            </div>

            <label for="bus_nam" class="col-sm-1">业务描述</label>
            <div class="col-sm-3">
                <textarea class="form-control" name="bus_nam" id="bus_nam" placeholder="业务描述" rows="3" >${pifbus.bus_nam}</textarea>
            </div>

            <label for="upt_dat" class="col-sm-1">最后更新日期</label>
            <div class="col-sm-3">
                <input type="text" class="form-control Wdate" onclick="WdatePicker()" value="<fmt:formatDate value='${pifbus.upt_dat}' pattern='yyyy-MM-dd' />" name="upt_dat" id="upt_dat" placeholder="最后更新日期">
            </div>
        </div>

        <div class="form-group">
            <label for="upt_tlr" class="col-sm-1">更新柜员</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifbus.upt_tlr}" name="upt_tlr" id="upt_tlr" placeholder="更新柜员">
            </div>

            <label for="bus_kd1" class="col-sm-1">业务大类</label>

            <div class="col-sm-3">
                <%--<input type="text" class="form-control" value="${pifbus.bus_kd1}" name="bus_kd1" id="bus_kd1" placeholder="业务大类">--%>
                <select class="form-control" name="nus_kd1" id="bus_kd1">
                    <option value="1">存款类</option>
                    <option value="2">贷款类</option>
                    <option value="3">国内结算类</option>
                    <option value="4">国际结算类</option>
                    <option value="5">资金业务类</option>
                    <option value="6">信用卡类</option>
                    <option value="7">自动转帐类</option>
                    <option value="8">理财类</option>
                    <option value="9">其他</option>
                    <option value="0">代理类</option>
                </select>
            </div>

            <label for="bus_kd2" class="col-sm-1">业务小类</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifbus.bus_kd2}" name="bus_kd2" id="bus_kd2" placeholder="业务小类">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-9"></div>
            <div class="col-sm-3">
                <button type="submit" class="btn btn-primary">提交</button>
                <button type="button" onclick="history.go(-1);" class="btn btn-primary">返回</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
<%@include file="/WEB-INF/pages/main.jsp"%>

<script>
    $('#pifbusForm').validate({
        rules: {
            "bus_cde": {
                required: true,
                digits: true,
                rangelength:[3,3]
            },
            "app_cde": {
                required: true,
                digits: true,
                rangelength:[2,2]
                /*remote:{
                 url:'/UserCt/findUserByAccount',
                 type:"post",
                 datatype:"json",
                 data:{
                 account:function(){ return $("#username").val()}
                 }
                 }*/
            },
            'bus_itm': {
                required: true,
                digits: true,
                rangelength:[4,4]
            },
            "upt_tlr": {
                required: true,
                digits: true
            },
            "upt_dat": {
                required: false,
                isDate: true
            },
            "bus_kd1": {
                required: true
                /*remote: {
                 url: '/UserCt/findUserByEmail',//检测EMAIL
                 type:"post",
                 dataType: "json",
                 data:{
                 email:function() { return $("#myEmail").val()}
                 }
                 }*/
            },
            "bus_kd2": {
                required: true,
                digits: true
            }
        },
        messages: {
            "bus_cde": {
                required: "业务码不能为空！",
                digits:"必须是数字哦",
                rangelength:"请输入3位业务码"
            },
            "app_cde": {
                required: "请输入应用码",
                digits: "应该是数字类型哦",
                rangelength: "请输入2位应用码"
            }
        },
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        success: function (element) {
            element.addClass('valid').closest('.form-group').removeClass('has-error').addClass('has-success');
        }
    });
</script>