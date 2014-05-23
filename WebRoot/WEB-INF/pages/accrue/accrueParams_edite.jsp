<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 14-5-6
  Time: 下午4:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
<%@include file="/WEB-INF/pages/header.jsp"%>
<%@include file="/WEB-INF/pages/main.jsp"%>
<title></title>
</head>
<body>
	<div class="container">
		<form class="form-horizontal" id="accrueParamsForm" action="${pageContext.request.contextPath}/updateAccrueParams" method="post" >
		<input type="hidden" name="id" value="${as.id}">
			<div class="form-group">
				<label for="ope_code" class="col-sm-1">操作码</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.ope_code}"
						name="ope_code" id="ope_code" placeholder="操作碼">
				</div>

				<label for="org_code" class="col-sm-1">机构号</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.org_code}"
						name="org_code" id="org_code" placeholder="机构号">
				</div>

				<label for="acc_type" class="col-sm-1">计提种类</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.acc_type}"
						name="acc_type" id="acc_type" placeholder="计提种类">
				</div>
			</div>

			<div class="form-group">


				<label for="acc_name" class="col-sm-1">计提名称</label>
				<div class="col-sm-3">
					<input class="form-control" value="${as.acc_name}" name="acc_name"
						id="acc_name" placeholder="计提名称"></input>
				</div>

				<label for="bak_account" class="col-sm-1">备抵账号</label>
				<div class="col-sm-3">
					<input type="text" value="${as.bak_account}" class="form-control"
						name="bak_account" id="bak_account" placeholder="备抵账号">
				</div>
				<label for="acc_percent" class="col-sm-1">计提比例</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.acc_percent}"
						name="acc_percent" id="acc_percent" placeholder="计提比例">
				</div>
			</div>

			<div class="form-group">
				<label for="ope_flag" class="col-sm-1">处理标志</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.ope_flag}"
						name="ope_flag" id="ope_flag" placeholder="处理标志">
				</div>
				<label for="acc_date" class="col-sm-1">记账日期</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.acc_date}"
						name="acc_date" id="acc_date" placeholder="记账日期">
				</div>

				<label for="REC_STS" class="col-sm-1">记录状态</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.REC_STS}"
						name="REC_STS" id="REC_STS" placeholder="记录状态">
				</div>


			</div>

			<div class="form-group">
				<label for="source_code" class="col-sm-1">来源序号</label>
				<div class="col-sm-3">
					<input type="text" class="source_code" value="${as.source_code}"
						name="source_code" id="source_code" placeholder="来源序号">
				</div>

				<label for="source_comment" class="col-sm-1">来源说明</label>
				<div class="col-sm-3">
					<INPUT TYPE="TEXT" class="form-control" value="${as.source_comment}"
						name="source_comment" id="source_comment" placeholder="来源说明"></INPUT>
				</div>

				<label for="opt_type" class="col-sm-1">计算方式</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${as.opt_type}"
						name="opt_type" id="opt_type" placeholder="记录状态">
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
