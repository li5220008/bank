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
        <form class="form-horizontal" action="${pageContext.request.contextPath}/pifirt/addDo" method="post" role="form">
            <div class="form-group">
                <label for="irt_key" class="col-sm-1">利率主键</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="irt_key" id="irt_key" placeholder="利率主键">
                </div>
                
                <label for="cur_cde" class="col-sm-1">货币码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="cur_cde" id="cur_cde" placeholder="货币码">
                </div>

                <label for="irt_cde" class="col-sm-1">利率代码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="irt_cde" id="irt_cde" placeholder="利率代码">
                </div>
            </div>

            <div class="form-group">
            	<label for="irt_kd1" class="col-sm-1">利率大类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="irt_kd1" id="irt_kd1" placeholder="利率大类">
                </div>
                
            	<label for="irt_kd2" class="col-sm-1">利率细类</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="irt_kd2" id="irt_kd2" placeholder="利率细类">
                </div>
            
                <label for="eff_dat" class="col-sm-1">启用日期</label>
                <div class="col-sm-3">
                    <input type="text" onclick="" class="form-control" name="eff_dat" id="eff_dat" placeholder="启用日期">
                </div>
            </div>

            <div class="form-group">
            	<label for="irt_nam" class="col-sm-1">利率名称</label>
                <div class="col-sm-3">
                    <input type="text" onclick="" class="form-control" name="irt_nam" id="irt_nam" placeholder="利率名称">
                </div>
                <label for="cur_flg" class="col-sm-1">当天使用标记</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="cur_flg" id="cur_flg" placeholder="当天使用标记">
                </div>

                <label for="mod_flg" class="col-sm-1">当天修改标记</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="mod_flg" id="mod_flg" placeholder="当天修改标记">
                </div>
            </div>

            <div class="form-group">
            	<label for="irt_val" class="col-sm-1">年利率值</label>
                <div class="col-sm-3">
                    <input type="text" onclick="" class="form-control" name="irt_val" id="irt_val" placeholder="年利率值">
                </div>
                <label for="irt_sph" class="col-sm-1">浮动上限值</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="irt_sph" id="irt_sph" placeholder="浮动上限值">
                </div>

                <label for="irt_spl" class="col-sm-1">浮动下限值</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="irt_spl" id="irt_spl" placeholder="浮动下限值">
                </div>
            </div>
            <div class="form-group">
            	<label for="spr_flg" class="col-sm-1">浮动标记</label>
                <div class="col-sm-3">
                    <input type="text" onclick="" class="form-control" name="spr_flg" id="spr_flg" placeholder="浮动标记">
                </div>
                <label for="cdr_flg" class="col-sm-1">借贷标记</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="cdr_flg" id="cdr_flg" placeholder="借贷标记">
                </div>

                <label for="irt_trm" class="col-sm-1">期限</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="irt_trm" id="irt_trm" placeholder="期限">
                </div>
            </div>
            <div class="form-group">
            	<label for="trm_unt" class="col-sm-1">期限单位</label>
                <div class="col-sm-3">
                    <input type="text" onclick="" class="form-control" name="trm_unt" id="trm_unt" placeholder="期限单位">
                </div>
                <label for="cre_tlr" class="col-sm-1">建档柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="cre_tlr" id="cre_tlr" placeholder="建档柜员">
                </div>

                <label for="cre_dat" class="col-sm-1">建档日期</label>
                <div class="col-sm-3">
                    <input type="text" onclick="WdatePicker()" class="form-control" name="cre_dat" id="cre_dat" placeholder="建档日期">
                </div>
            </div>
            <div class="form-group">
            	<label for="upt_dat" class="col-sm-1">最后更新日期</label>
                <div class="col-sm-3">
                    <input type="text" onclick="WdatePicker()" class="form-control" name="upt_dat" id="upt_dat" placeholder="最后更新日期">
                </div>
                <label for="upt_tlr" class="col-sm-1">更新柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="upt_tlr" id="upt_tlr" placeholder="更新柜员">
                </div>

                <label for="rec_sts" class="col-sm-1">记录状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="rec_sts" id="rec_sts" placeholder="记录状态">
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