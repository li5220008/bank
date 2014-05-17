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
        <form class="form-horizontal" id="publicCodeForm" action="${pageContext.request.contextPath}/publicCode/addDo" method="post" role="form">
            <div class="form-group">
                <label for="public_code" class="col-sm-1">代码编号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_code" id="public_code" placeholder="代码编号">
                </div>

                <label for="public_type" class="col-sm-1">代码种类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_type" id="public_type" placeholder="代码种类">
                </div>

                <label for="public_name" class="col-sm-1">代码名称</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="public_name" id="public_name" placeholder="代码名称">
                </div>
            </div>

            <div class="form-group">
                <label for="comment" class="col-sm-1">注释</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="comment" id="comment" placeholder="注释">
                </div>

                <label for="control_message" class="col-sm-1">控制信息</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="control_message" id="control_message" placeholder="控制信息">
                </div>

                <label for="start_time" class="col-sm-1">启用日期</label>
                <div class="col-sm-3">
                    <input type="text" onclick="WdatePicker()" class="form-control" name="start_time" id="start_time" placeholder="启用日期">
                </div>
            </div>

            <div class="form-group">
                <label for="last_time" class="col-sm-1">最后更新日期</label>
                <div class="col-sm-3">
                    <input type="text" onclick="WdatePicker()" class="form-control" name="last_time" id="last_time" placeholder="最后更新日期">
                </div>

                <label for="upt_tlr" class="col-sm-1">更新柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="upt_tlr" id="upt_tlr" placeholder="更新柜员">
                </div>

                <label for="use_status" class="col-sm-1">使用状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="use_status" id="use_status" placeholder="使用状态">
                </div>
            </div>

            <div class="form-group">
                <label for="rec_sts" class="col-sm-1">记录状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="rec_sts" id="rec_sts" placeholder="记录状态">
                </div>

                <label class="col-sm-1">###</label>
                <div class="col-sm-3">
                </div>

                <label class="col-sm-1">###</label>
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
    $('#publicCodeForm').validate({
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
