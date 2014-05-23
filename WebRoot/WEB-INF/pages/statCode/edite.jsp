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
        <form class="form-horizontal" action="updateStatCode" method="post" >
            <div class="form-group">
             <input type="hidden" value="${sc.ANC_CDE}"></input>
               
                <label for="ANC_TYP" class="col-sm-1">统计分析类别</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.ANC_TYP}" name="ANC_TYP" id="ANC_TYP" placeholder="统计分析类别">
                </div>
                <label for="ANA_NUM" class="col-sm-1">统计分析编号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="ANA_NUM" id="ANA_NUM" placeholder="统计分析编号">
                </div>

                <label for="ANC_DCR" class="col-sm-1">统计分析描述</label>
                <div class="col-sm-3">
                    <textarea  class="form-control" name="ANC_DCR" id="ANC_DCR" placeholder="统计分析描述" rows="3"></textarea>
                </div>
            </div>

            <div class="form-group">
                <label for="" class="col-sm-1">适用科目性质</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="GLC_RAG" id="GLC_RAG" placeholder="适用科目性质">
                </div>

                <label for="acc_name" class="col-sm-1">适用损益性质</label>
                <div class="col-sm-3">
                    <input class="form-control" name="PLC_RAG" id="PLC_RAG" placeholder="适用损益性质" ></input>
                </div>

                <label for="CFB_TPY" class="col-sm-1">上报外管局大类</label>
                <div class="col-sm-3">
                    <input type="text"  class="form-control" name="CFB_TYP" id="CFB_TYP" placeholder="上报外管局大类">
                </div>
            </div>

            <div class="form-group">
                <label for="LCL_CDE" class="col-sm-1">其中项目码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="LCL_CDE" id="LCL_CDE" placeholder="其中项目码">
                </div>

                <label for="CDR_FLG" class="col-sm-1">借贷标记</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="CDR_FLG" id="CDR_FLG" placeholder="借贷标记">
                </div>

                <label for="UPT_DAT" class="col-sm-1">最后更新日期</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control Wdate" onclick="WdatePicker()" name="UPT_DAT" id="UPT_DAT" placeholder="最后更新日期">
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
