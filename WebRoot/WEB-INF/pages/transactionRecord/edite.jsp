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
        <form class="form-horizontal" action="updateTranRecord" method="post">
            <div class="form-group">
             <input type="hidden" name="id" value="${sc.id}">
               
                <label for="ope_code" class="col-sm-1">操作码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.ope_code}" name="ope_code" id="ope_code" placeholder="操作码">
                </div>

                <label for="trade_code" class="col-sm-1">交易代码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.trade_code}" name="trade_code" id="trade_code" placeholder="交易代码">
                </div>

                <label for="trade_name" class="col-sm-1">交易名称</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.trade_name}"  name="trade_name" id="trade_name" placeholder="交易名称" ></input>
                </div>
            </div>

            <div class="form-group">
                <label for="trade_subcode" class="col-sm-1">交易子码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.trade_subcode}" name="trade_subcode" id="trade_subcode" placeholder="交易子码">
                </div>

                <label for="comment" class="col-sm-1">备注</label>
                <div class="col-sm-3">
                    <textarea class="form-control" name="comment" id="comment" value="${sc.comment}" rows="3" placeholder="备注" ></textarea>
                </div>

                <label for="trade_pen" class="col-sm-1">交易权限</label>
                <div class="col-sm-3">
                    <input type="text"  class="form-control" name="trade_pen" id="trade_pen" value="${sc.trade_pen}"  placeholder="交易权限">
                </div>
            </div>

            <div class="form-group">
                <label for="pen_reason" class="col-sm-1">授权原因</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.ope_code}" name="pen_reason" id="pen_reason" placeholder="授权原因">
                </div>

                <label for="journal_no" class="col-sm-1">分录序号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.journal_no}" name="journal_no" id="journal_no" placeholder="分录序号">
                </div>

                <label for="borrow_flag" class="col-sm-1">借贷标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.borrow_flag}"  name="borrow_flag" id="borrow_flag" placeholder="借贷标志">
                </div>
            </div>
            
            <div class="form-group">
                <label for="subject_code" class="col-sm-1">科目代码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="subject_code" value="${sc.subject_code}" id="subject_code" placeholder="授权原因">
                </div>

                <label for="inr_act_no" class="col-sm-1">内部账序号</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.inr_act_no}" name="inr_act_no" id="inr_act_no" placeholder="内部账序号">
                </div>

                <label for="out_act_gre" class="col-sm-1">出账级别</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.out_act_gre}"  name="out_act_gre" id="out_act_gre" placeholder="出账级别">
                </div>
            </div>
            
               <div class="form-group">
                <label for="out_act_tye" class="col-sm-1">出账类别</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="out_act_tye" value="${sc.out_act_tye}" id="out_act_tye" placeholder="出账类别">
                </div>

                <label for="read_flag" class="col-sm-1">红字标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.read_flag}" name="read_flag" id="read_flag" placeholder="红字标志">
                </div>

                <label for="supervise_flag" class="col-sm-1">监督标志</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.supervise_flag}"  name="supervise_flag" id="supervise_flag" placeholder="监督标志">
                </div>
            </div>
            
                 <div class="form-group">
                <label for="start_date" class="col-sm-1">启用日期</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control Wdate" value="${sc.start_date}" onclick="WdatePicker()" name="start_date" id="start_date" placeholder="启用日期">
                </div>

                <label for="USE_STS" class="col-sm-1">使用状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.USE_STS}" name="USE_STS" id="USE_STS" placeholder="使用状态">
                </div>

                <label for="REC_STS" class="col-sm-1">记录状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" value="${sc.REC_STS}"  name="REC_STS" id="REC_STS" placeholder="记录状态">
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
