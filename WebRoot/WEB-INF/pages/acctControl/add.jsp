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
        <form class="form-horizontal" id="acctControlForm" action="${pageContext.request.contextPath}/acctControl/addDo" method="post" role="form">
            <div class="form-group">
                <label for="ope_code" class="col-sm-1">操作码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="ope_code" id="ope_code" placeholder="操作码">
                </div>

                <label for="org_code" class="col-sm-1">机构号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="org_code" id="org_code" placeholder="机构号">
                </div>

                <label for="subject_code" class="col-sm-1">科目号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="subject_code" id="subject_code" placeholder="科目号">
                </div>
            </div>

            <div class="form-group">
                <label for="order_code" class="col-sm-1">顺序号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="order_code" id="order_code" placeholder="顺序号">
                </div>
                <label for="account_name" class="col-sm-1">账户名称</label>
                <div class="col-sm-3">
                    <textarea name="account_name" class="form-control"  placeholder="账户名称"  id="account_name"></textarea>
                </div>

                <label for="count_code" class="col-sm-1">统计代码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="count_code" id="count_code" placeholder="统计代码">
                </div>
            </div>

            <div class="form-group">
                <label for="account_limit" class="col-sm-1">开户范围</label>
                <div class="col-sm-3">
                    <input type="text"  class="form-control" name="account_limit" id="account_limit" placeholder="开户范围">
                </div>

                <label for="icon_limit" class="col-sm-1">货币范围</label>
                <div class="col-sm-3">
                    <input type="text"  class="form-control" name="icon_limit" id="icon_limit" placeholder="货币范围">
                </div>

                <label for="detail_code" class="col-sm-1">细目号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="detail_code" id="detail_code" placeholder="细目号">
                </div>
            </div>

            <div class="form-group">
                <label for="allow_direction" class="col-sm-1">允许发生方向</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="allow_direction" id="allow_direction" placeholder="允许发生方向">
                </div>

                <label for="remaining_direction" class="col-sm-1">余额方向</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="remaining_direction" id="remaining_direction" placeholder="余额方向">
                </div>

                <label for="account_type" class="col-sm-1">账户类型</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="account_type" id="account_type" placeholder="账户类型">
                </div>
            </div>

            <div class="form-group">
                <label for="detail_flag" class="col-sm-1">明细核算标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="detail_flag" id="detail_flag" placeholder="明细核算标志">
                </div>

                <label for="borrow_code" class="col-sm-1">借方利率代码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="borrow_code" id="borrow_code" placeholder="借方利率代码">
                </div>

                <label for="loan_code" class="col-sm-1">贷方利率代码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="loan_code" id="loan_code" placeholder="贷方利率代码">
                </div>
            </div>

            <div class="form-group">
                <label for="destroy_type" class="col-sm-1">销账类别</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="destroy_type" id="destroy_type" placeholder="销账类别">
                </div>

                <label for="flush_type" class="col-sm-1">销账种类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="flush_type" id="flush_type" placeholder="销账种类">
                </div>

                <label for="hand_up_limit" class="col-sm-1">挂账期限</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="hand_up_limit" id="hand_up_limit" placeholder="挂账期限">
                </div>
            </div>

            <div class="form-group">
                <label for="close_limit" class="col-sm-1">账户关闭期限</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="close_limit" id="close_limit" placeholder="账户关闭期限">
                </div>

                <label for="isallowA" class="col-sm-1">是否允许AI输入</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="isallowA" id="isallowA" placeholder="是否允许AI输入">
                </div>

                <label for="directional_flag" class="col-sm-1">定向账户标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="directional_flag" id="directional_flag" placeholder="定向账户标志">
                </div>
            </div>

            <div class="form-group">
                <label for="public_type" class="col-sm-1">共用类型</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_type" id="public_type" placeholder="共用类型">
                </div>

                <label for="public_count_type" class="col-sm-1">共用记账标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_count_type" id="public_count_type" placeholder="共用记账标志">
                </div>

                <label for="remain_flag" class="col-sm-1">余额红字标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="remain_flag" id="remain_flag" placeholder="余额红字标志">
                </div>
            </div>

            <div class="form-group">
                <label for="car_flag" class="col-sm-1">卡片账标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="car_flag" id="car_flag" placeholder="卡片账标志">
                </div>

                <label for="start_time" class="col-sm-1">启用日期</label>
                <div class="col-sm-3">
                    <input type="text" class="Wdate form-control" onclick="WdatePicker()" name="start_time" id="start_time" placeholder="启用日期">
                </div>

                <label for="last_time" class="col-sm-1">最后更新日期</label>
                <div class="col-sm-3">
                    <input type="text" class="Wdate form-control" onclick="WdatePicker()" name="last_time" id="last_time" placeholder="最后更新日期">
                </div>
            </div>

            <div class="form-group">
                <label for="udt_clr" class="col-sm-1">更新柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="udt_clr" id="udt_clr" placeholder="更新柜员">
                </div>

                <label for="use_status" class="col-sm-1">使用状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="use_status" id="use_status" placeholder="使用状态">
                </div>

                <label for="rec_sts" class="col-sm-1">记录状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="rec_sts" id="rec_sts" placeholder="记录状态">
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
    $('#acctControlForm').validate({
        rules: {
            "ope_code": {
                required: true,
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
            "org_code": {
                rangelength: [6,6]
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
            "account_limit": {
                rangelength: [10,10]
            },
            "icon_limit": {
                rangelength: [3,3]
            },
            "detail_code": {
                rangelength: [1,1]
            },
            "allow_direction": {
                rangelength: [1,1]
            },
            "remaining_direction": {
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
            "loan_code": {
                rangelength: [4,4]
            },
            "destroy_type": {
                rangelength: [1,1]
            },
            "flush_type": {
                rangelength: [1,1]
            },
            "hand_up_limit": {
                rangelength: [3,3]
            },
            "close_limit": {
                rangelength: [3,3]
            },
            "isallowA": {
                rangelength: [1,1]
            },
            "directional_flag": {
                rangelength: [1,1]
            },
            "public_type": {
                rangelength: [1,1]
            },
            "public_count_type": {
                rangelength: [1,1]
            },
            "remain_flag": {
                rangelength: [1,1]
            },
            "car_flag": {
                rangelength: [1,1]
            },
            "destroy_type": {
                rangelength: [1,1]
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
