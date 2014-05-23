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
    <form class="form-horizontal" id="acctOpenForm" action="${pageContext.request.contextPath}/acctOpen/addDo"
          method="post" role="form">
        <div class="form-group">
            <label for="ope_code" class="col-sm-1">操作码</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="ope_code" id="ope_code" placeholder="操作码">
            </div>

            <label for="account" class="col-sm-1">账号</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="account" id="account" placeholder="账号">
            </div>

            <label for="subject_code" class="col-sm-1">科目号</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="subject_code" id="subject_code" placeholder="科目号">
            </div>
        </div>

        <div class="form-group">
            <label for="account_name" class="col-sm-1">账户名称</label>

            <div class="col-sm-3">
                <textarea name="account_name" class="form-control" placeholder="账户名称" id="account_name"></textarea>
            </div>

            <label for="order_code" class="col-sm-1">顺序号</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="order_code" id="order_code" placeholder="顺序号">
            </div>

            <label for="count_code" class="col-sm-1">统计代码</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="count_code" id="count_code" placeholder="统计代码">
            </div>
        </div>

        <div class="form-group">

            <label for="open_limit" class="col-sm-1">开户范围</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="open_limit" id="open_limit" placeholder="开户范围">
            </div>
            <label for="icon_limit" class="col-sm-1">币种范围</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="icon_limit" id="icon_limit" placeholder="币种范围">
            </div>

            <label for="allow_deriction" class="col-sm-1">允许发生方向</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="allow_deriction" id="allow_deriction"
                       placeholder="允许发生方向">
            </div>
        </div>

        <div class="form-group">

            <label for="remain_deriction" class="col-sm-1">余额方向</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="remain_deriction" id="remain_deriction"
                       placeholder="余额方向">
            </div>
            <label for="account_type" class="col-sm-1">账户类型</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="account_type" id="account_type" placeholder="账户类型">
            </div>

            <label for="detail_flag" class="col-sm-1">明细核算标志</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="detail_flag" id="detail_flag" placeholder="明细核算标志">
            </div>
        </div>

        <div class="form-group">

            <label for="borrow_code" class="col-sm-1">借方利率代码</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="borrow_code" id="borrow_code" placeholder="借方利率代码">
            </div>
            <label for="load_code" class="col-sm-1">贷方利率代码</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="load_code" id="load_code" placeholder="贷方利率代码">
            </div>

            <label for="destroy_flag" class="col-sm-1">挂销账标志</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="destroy_flag" id="destroy_flag" placeholder="挂销账标志">
            </div>
        </div>

        <div class="form-group">

            <label for="flush_type" class="col-sm-1">销账种类</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="flush_type" id="flush_type" placeholder="销账种类">
            </div>
            <label for="flush_limit" class="col-sm-1">销账期限</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="flush_limit" id="flush_limit" placeholder="销账期限">
            </div>

            <label for="close_limit" class="col-sm-1">账户关闭期限</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="close_limit" id="close_limit" placeholder="账户关闭期限">
            </div>
        </div>

        <div class="form-group">

            <label for="allow_input" class="col-sm-1">是否允许AI输入</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="allow_input" id="allow_input" placeholder="是否允许AI输入">
            </div>
            <label for="deriction_flag" class="col-sm-1">定向账户标志</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="deriction_flag" id="deriction_flag" placeholder="定向账户标志">
            </div>

            <label for="public_type" class="col-sm-1">共用类型</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="public_type" id="public_type" placeholder="共用类型">
            </div>

        </div>

        <div class="form-group">
            <label for="public_flag" class="col-sm-1">共用记账标志</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="public_flag" id="public_flag" placeholder="共用记账标志">
            </div>
            <label for="remain_flag" class="col-sm-1">余额红字标志</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="remain_flag" id="remain_flag" placeholder="余额红字标志">
            </div>

            <label for="org_code" class="col-sm-1">机构号</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="org_code" id="org_code" placeholder="机构号">
            </div>

        </div>

        <div class="form-group">
            <label for="start_time" class="col-sm-1">启用日期</label>

            <div class="col-sm-3">
                <input type="text" class="form-control Wdate" onclick="WdatePicker()" name="start_time" id="start_time"
                       placeholder="启用日期">
            </div>
            <label for="last_time" class="col-sm-1">最后更新日期</label>

            <div class="col-sm-3">
                <input type="text" class="form-control Wdate" onclick="WdatePicker()" name="last_time" id="last_time"
                       placeholder="最后更新日期">
            </div>

            <label for="upt_clr" class="col-sm-1">更新柜员</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="upt_clr" id="upt_clr" placeholder="更新柜员">
            </div>

        </div>

        <div class="form-group">
            <label for="use_status" class="col-sm-1">使用状态</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="use_status" id="use_status" placeholder="使用状态">
            </div>
            <label for="rec_sts" class="col-sm-1">记录状态</label>

            <div class="col-sm-3">
                <input type="text" class="form-control" name="rec_sts" id="rec_sts" placeholder="记录状态">
            </div>

            <label for="org_code" class="col-sm-1">###</label>

            <div class="col-sm-3">
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
    $('#acctOpenForm').validate({
        rules: {
            "ope_code": {
                required: true,
                digits: true,
                rangelength:[1,1]
                /*remote:{
                 url:'/UserCt/findUserByAccount',
                 type:"post",
                 datatype:"json",
                 data:{
                 account:function(){ return $("#username").val()}
                 }
                 }*/
            },
            "account": {
                rangelength: [1,1]
            },
            "subject_code": {
                rangelength: [5,5]
            },
            "order_code": {
                rangelength: [5,5]
            },
            "count_code": {
                rangelength: [16,16]
            },
            "open_limit": {
                rangelength: [10,10]
            },
            "icon_limit": {
                rangelength: [1,1]
            },
            "allow_deriction": {
                rangelength: [1,1]
            },
            "remain_deriction": {
                rangelength: [1,1]
            },
            "account_type": {
                rangelength: [1,1]
            },
            "detail_flag": {
                rangelength: [1,1]
            },
            "borrow_code": {
                rangelength: [4,4]
            },
            "load_code": {
                rangelength: [4,4]
            },
            "destroy_flag": {
                rangelength: [4,4]
            },
            "flush_type": {
                rangelength: [1,1]
            },
            "flush_limit": {
                rangelength: [1,1]
            },
            "close_limit": {
                rangelength: [3,3]
            },
            "allow_input": {
                rangelength: [1,1]
            },
            "deriction_flag": {
                rangelength: [1,1]
            },
            "public_type": {
                rangelength: [1,1]
            },
            "public_flag": {
                rangelength: [1,1]
            },
            "remain_flag": {
                rangelength: [1,1]
            },
            "org_code": {
                rangelength: [6,6]
            },
            "start_time": {
                required: false,
                isDate: true
            },
            "last_time": {
                required: false,
                isDate: true
            },
            "upt_tlr": {
                required: true,
                rangelength: [6,6]
            },
            "use_status": {
                required: true,
                rangelength: [1,1]
            }
        },
        messages: {
        },
        highlight: function (element) {
            $(element).closest('.form-group').removeClass('has-success').addClass('has-error');
        },
        success: function (element) {
            element.addClass('valid').closest('.form-group').removeClass('has-error').addClass('has-success');
        }
    });
</script>
