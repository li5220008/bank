<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午4:12
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
    <form class="form-horizontal" action="${pageContext.request.contextPath}/pifirt/updateDo" method="post" role="form">
        <div class="form-group">
            <label for="irt_key" class="col-sm-1">利率主键</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.irt_key}" name="irt_key" id="irt_key" placeholder="利率主键">
            </div>

            <label for="cur_cde" class="col-sm-1">货币码</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.cur_cde}" name="cur_cde" id="cur_cde" placeholder="货币码">
            </div>

            <label for="irt_cde" class="col-sm-1">利率代码</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.irt_cde}" name="irt_cde" id="irt_cde" placeholder="利率代码">
            </div>
        </div>

        <div class="form-group">
            <label for="irt_kd1" class="col-sm-1">利率大类</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.irt_kd1}" name="irt_kd1" id="irt_kd1" placeholder="利率大类">
            </div>

            <label for="irt_kd2" class="col-sm-1">利率细类</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.irt_kd2}" name="irt_kd2" id="irt_kd2" placeholder="利率细类">
            </div>

            <label for="eff_dat" class="col-sm-1">启用日期</label>
            <div class="col-sm-3">
                <input type="text" onclick="" class="form-control" value="${pifirt.eff_dat}" name="eff_dat" id="eff_dat" placeholder="启用日期">
            </div>
        </div>

        <div class="form-group">
            <label for="irt_nam" class="col-sm-1">利率名称</label>
            <div class="col-sm-3">
                <input type="text" onclick="" class="form-control" value="${pifirt.irt_nam}" name="irt_nam" id="irt_nam" placeholder="利率名称">
            </div>
            <label for="cur_flg" class="col-sm-1">当天使用标记</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.cur_flg}" name="cur_flg" id="cur_flg" placeholder="当天使用标记">
            </div>

            <label for="mod_flg" class="col-sm-1">当天修改标记</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.mod_flg}" name="mod_flg" id="mod_flg" placeholder="当天修改标记">
            </div>
        </div>

        <div class="form-group">
            <label for="irt_val" class="col-sm-1">年利率值</label>
            <div class="col-sm-3">
                <input type="text" onclick="" class="form-control" value="${pifirt.irt_val}" name="irt_val" id="irt_val" placeholder="年利率值">
            </div>
            <label for="irt_sph" class="col-sm-1">浮动上限值</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.irt_sph}" name="irt_sph" id="irt_sph" placeholder="浮动上限值">
            </div>

            <label for="irt_spl" class="col-sm-1">浮动下限值</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.irt_spl}" name="irt_spl" id="irt_spl" placeholder="浮动下限值">
            </div>
        </div>
        <div class="form-group">
            <label for="spr_flg" class="col-sm-1">浮动标记</label>
            <div class="col-sm-3">
                <input type="text" onclick="" class="form-control" value="${pifirt.spr_flg}" name="spr_flg" id="spr_flg" placeholder="浮动标记">
            </div>
            <label for="cdr_flg" class="col-sm-1">借贷标记</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.cdr_flg}" name="cdr_flg" id="cdr_flg" placeholder="借贷标记">
            </div>

            <label for="irt_trm" class="col-sm-1">期限</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.irt_trm}" name="irt_trm" id="irt_trm" placeholder="期限">
            </div>
        </div>
        <div class="form-group">
            <label for="trm_unt" class="col-sm-1">期限单位</label>
            <div class="col-sm-3">
                <input type="text" onclick="" class="form-control" value="${pifirt.trm_unt}" name="trm_unt" id="trm_unt" placeholder="期限单位">
            </div>
            <label for="cre_tlr" class="col-sm-1">建档柜员</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.cre_tlr}" name="cre_tlr" id="cre_tlr" placeholder="建档柜员">
            </div>

            <label for="cre_dat" class="col-sm-1">建档日期</label>
            <div class="col-sm-3">
                <input type="text" class="form-control Wdate" onclick="WdatePicker()" value="<fmt:formatDate value="${pifirt.upt_dat}" pattern="yyyy-MM-dd" />" name="cre_dat" id="cre_dat" placeholder="建档日期">
            </div>
        </div>
        <div class="form-group">
            <label for="upt_dat" class="col-sm-1">最后更新日期</label>
            <div class="col-sm-3">
                <input type="text" class="form-control Wdate" onclick="WdatePicker()" value="<fmt:formatDate value="${pifirt.upt_dat}" pattern="yyyy-MM-dd"/>" name="upt_dat" id="upt_dat" placeholder="最后更新日期">
            </div>
            <label for="upt_tlr" class="col-sm-1">更新柜员</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.upt_tlr}" name="upt_tlr" id="upt_tlr" placeholder="更新柜员">
            </div>

            <label for="rec_sts" class="col-sm-1">记录状态</label>
            <div class="col-sm-3">
                <input type="text" class="form-control" value="${pifirt.rec_sts}" name="rec_sts" id="rec_sts" placeholder="记录状态">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9">
            </div>
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