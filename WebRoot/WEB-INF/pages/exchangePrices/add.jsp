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
    <title></title>
</head>
<body>
    <div class="container">
        <form class="form-horizontal" id="exchangeReceiptsForm" action="${pageContext.request.contextPath}/exchangeReceipts/addDo" method="post" role="form">
            <div class="form-group">
                <label for="public_code" class="col-sm-1">兑换类别</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_code" id="public_code" placeholder="兑换类别">
                </div>

                <label for="public_type" class="col-sm-1">货币符号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_type" id="public_type" placeholder="货币符号">
                </div>

                <label for="public_name" class="col-sm-1">汇率种类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_name" id="public_name" placeholder="汇率种类">
                </div>
            </div>

            <div class="form-group">
                <label for="comment" class="col-sm-1">汇率</label>
                <div class="col-sm-3">
                    <textarea name="comment" class="form-control"  placeholder="汇率"  id="comment"></textarea>
                </div>

                <label for="control_message" class="col-sm-1">汇率标识</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="control_message" id="control_message" placeholder="汇率标识">
                </div>

                <label for="start_time" class="col-sm-1">当天使用标记</label>
                <div class="col-sm-3">
                    <input type="text" onclick="WdatePicker()" class="form-control" name="start_time" id="start_time" placeholder="当天使用标记">
                </div>
            </div>

            <div class="form-group">
                <label for="last_time" class="col-sm-1">当天修改标记</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control Wdate" onclick="WdatePicker()" class="form-control" name="last_time" id="last_time" placeholder="当天修改标记">
                </div>

                <label for="upt_tlr" class="col-sm-1">启用时间</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control Wdate" onclick="WdatePicker()" name="upt_tlr" id="upt_tlr" placeholder="启用时间">
                </div>

                <label for="use_status" class="col-sm-1">建档柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="use_status" id="use_status" placeholder="建档柜员">
                </div>
            </div>

            <div class="form-group">
                <label for="rec_sts" class="col-sm-1">建档时间</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control Wdate" onclick="WdatePicker()" name="rec_sts" id="rec_sts" placeholder="建档时间">
                </div>

                <label for="upt_tlr" class="col-sm-1">更新柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="upt_tlr" id="upt_tlr" placeholder="更新柜员">
                </div>

                <label for="use_status" class="col-sm-1">记录状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="use_status" id="use_status" placeholder="记录状态">
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
    $('#exchangeReceiptsForm').validate({
        rules: {
            "public_code": {
                required: true,
                digits: true,
                rangelength:[3,3]
                /*remote:{
                 url:'/UserCt/findUserByAccount',
                 type:"post",
                 datatype:"json",
                 data:{
                 account:function(){ return $("#username").val()}
                 }
                 }*/
            },
            "public_type": {
                required: true
            },
            'public_name': {
                required: true,
                isChinese: true
            },
            "control_message": {
                required: false
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
                required: true
            },
            "use_status": {
                required: true,
                digits: true
            }
        },
        messages: {
            "public_code": {
                required: "公共码不能为空！",
                digits:"必须是数字哦",
                rangelength:"请输入3位公共码"
            },
            "public_name": {
                required: "不能为空哦!",
                digits: "应该是数字类型哦"
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
