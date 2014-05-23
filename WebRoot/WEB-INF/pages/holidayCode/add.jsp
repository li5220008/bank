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
        <form class="form-horizontal" action="addHolidayCode" method="post">
            <div class="form-group">
          
                <label for="holiday_code" class="col-sm-1">假日码</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="holiday_code" id="holiday_code" placeholder="假日码">
                </div>

                <label for="holiday_name" class="col-sm-1">假日名</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="holiday_name" id="holiday_name" placeholder="假日名">
                </div>

                <label for="date" class="col-sm-1">日期</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control Wdate" onclick="WdatePicker()" name="date" id="date" placeholder="日期">
                </div>
            </div>

            <div class="form-group">
          

                <label for="comment" class="col-sm-1">假日描述</label>
                <div class="col-sm-3">
                    <textarea class="form-control" name="comment" id="comment" placeholder="假日描述" rows="3" ></textarea>
                </div>

                <label for="country_code" class="col-sm-1">所属国家码</label>
                <div class="col-sm-3">
                    <input type="text"  class="form-control" name="country_code" id="country_code" placeholder="所属国家码">
                </div>
                      <label for="start_time" class="col-sm-1">开始日期</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control Wdate" onclick="WdatePicker()" name="start_time" id="start_time" placeholder="开始日期">
                </div>
            </div>

            <div class="form-group">
            
                <label for="UPT_TLR" class="col-sm-1">更新柜员</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="UPT_TLR" id="UPT_TLR" placeholder="更新柜员">
                </div>

              <label for="use_status" class="col-sm-1">使用状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="use_status" id="use_status" placeholder="使用状态">
                </div>
                 <label for="REC_STS" class="col-sm-1">记录状态</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="REC_STS" id="REC_STS" placeholder="记录状态">
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
