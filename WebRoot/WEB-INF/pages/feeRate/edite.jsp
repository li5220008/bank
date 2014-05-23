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
		<form class="form-horizontal" action="updateFeeRate" method="post">
			<div class="form-group">

				<div class="col-sm-3">
					<input type="hidden" class="form-control" name="FRT_KEY" id="FRT_KEY"
						placeholder="费率主键">
				</div>

				<label for="CUR_CDE" class="col-sm-1">货币码</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.CUR_CDE}" name="CUR_CDE" id="CUR_CDE"
						placeholder="货币码">
				</div>

				<label for="FRT_CDEs" class="col-sm-1">费率代码</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.FRT_CDEs}"  name="FRT_CDEs"
						id="FRT_CDEs" placeholder="费率代码">
				</div>
			</div>

			<div class="form-group">


				<label for="FRT_KD1" class="col-sm-1">收费大类</label>
				<div class="col-sm-3">
					<textarea class="form-control" value="${hc.FRT_KD1}" name="FRT_KD1" id="FRT_KD1"
						placeholder="收费大类" rows="3"></textarea>
				</div>

				<label for="FRT_KD2" class="col-sm-1">收费细类</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.FRT_KD2}" name="FRT_KD2" id="FRT_KD2"
						placeholder="收费细类">
				</div>
				<label for="EFF_DAT" class="col-sm-1">启用日期</label>
				<div class="col-sm-3">
					<input type="text" class="form-control Wdate" onclick="WdatePicker()" class="form-control" value="${hc.EFF_DAT}" name="EFF_DAT" id="EFF_DAT"
						placeholder="启用日期">
				</div>
			</div>

			<div class="form-group">
				<label for="FRT_CDE" class="col-sm-1">收费码</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.FRT_CDE}" name="FRT_CDE" id="FRT_CDE"
						placeholder="收费码">
				</div>
				<label for="FRT_NAM" class="col-sm-1">收费名称</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.FRT_NAM}" name="FRT_NAM" id="FRT_NAM"
						placeholder="收费名称">
				</div>

				<label for="DOC_CDE" class="col-sm-1">凭证代码</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.DOC_CDE}" name="DOC_CDE" id="DOC_CDE"
						placeholder="凭证代码">
				</div>


			</div>

			<div class="form-group">
				<label for="DOC_NAM" class="col-sm-1">凭证名称</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.DOC_NAM}" name="DOC_NAM" id="DOC_NAM"
						placeholder="凭证名称">
				</div>

				<label for="FRT_SPH" class="col-sm-1">费率浮动上限</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.FRT_SPH}" name="FRT_SPH" id="FRT_SPH"
						placeholder="费率浮动上限">
				</div>

				<label for="FRT_SPL" class="col-sm-1">费率浮动下限</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.FRT_SPL}" name="FRT_SPL" id="FRT_SPL"
						placeholder="费率浮动下限">
				</div>
			</div>

			<div class="form-group">


				<label for="SPR_FLG" class="col-sm-1">浮动标记</label>
				<div class="col-sm-3">
					<input class="form-control" value="${hc.SPR_FLG}" name="SPR_FLG" id="SPR_FLG"
						placeholder="浮动标记" ></input>
				</div>

				<label for="MAL_FEE" class="col-sm-1">邮费</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.MAL_FEE}" name="MAL_FEE" id="MAL_FEE"
						placeholder="邮费">
				</div>
				<label for="COM_FEE" class="col-sm-1">手续费</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.COM_FEE}" name="COM_FEE" id="COM_FEE"
						placeholder="手续费">
				</div>
			</div>

			<div class="form-group">
				<label for="FEE_RAT" class="col-sm-1">收费率</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.FEE_RAT}" name="FEE_RAT" id="FEE_RAT"
						placeholder="收费率">
				</div>
				<label for="HIG_LIM" class="col-sm-1">计费高限</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.HIG_LIM}" name="HIG_LIM" id="HIG_LIM"
						placeholder="计费高限">
				</div>

				<label for="LOW_LIM" class="col-sm-1">计费低限</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" value="${hc.LOW_LIM}" name="LOW_LIM" id="LOW_LIM"
						placeholder="计费低限">
				</div>


			</div>
	

	<div class="form-group">
		<label for="FEECYC" class="col-sm-1">计费周期</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.FEECYC}" name="FEECYC" id="FEECYC"
				placeholder="计费周期">
		</div>

		<label for="FEESDE" class="col-sm-1">收费方式</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.FEESDE}" name="FEESDE" id="FEESDE"
				placeholder="收费方式">
		</div>

		<label for="FEE_ITM" class="col-sm-1">收费转帐帐户科目</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.FEE_ITM}" name="FEE_ITM" id="FEE_ITM"
				placeholder="收费转帐帐户科目">
		</div>
	</div>

	<div class="form-group">


		<label for="FRT_FLG" class="col-sm-1">费率因子</label>
		<div class="col-sm-3">
			<input class="form-control" value="${hc.FRT_FLG}" name="FRT_FLG" id="FRT_FLG"
				placeholder="费率因子" ></input>
		</div>

		<label for="CMT_FLG" class="col-sm-1">计费因子</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.CMT_FLG}" name="CMT_FLG" id="CMT_FLG"
				placeholder="计费因子">
		</div>
		<label for="FEE_TPY" class="col-sm-1">费率种类</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.FEE_TPY}" name="FEE_TPY" id="FEE_TPY"
				placeholder="费率种类">
		</div>
	</div>

	<div class="form-group">
		<label for="CMT_TPY" class="col-sm-1">计算方法</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.CMT_TPY}" name="CMT_TPY" id="CMT_TPY"
				placeholder="计算方法">
		</div>
		<label for="RSV_FLG" class="col-sm-1">保留因子</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.RSV_FLG}" name="RSV_FLG" id="RSV_FLG"
				placeholder="保留因子">
		</div>

		<label for="CRETLR" class="col-sm-1">建档柜员</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.CRETLR}" name="CRETLR" id="CRETLR"
				placeholder="建档柜员">
		</div>
	</div>

	<div class="form-group">
		<label for="CREDAT" class="col-sm-1">建档日期</label>
		<div class="col-sm-3">
			<input type="text" class="form-control Wdate" onclick="WdatePicker()" value="${hc.CREDAT}" name="CREDAT" id="CREDAT"
				placeholder="建档日期">
		</div>
		<label for="REC_STS" class="col-sm-1">记录状态</label>
		<div class="col-sm-3">
			<input type="text" class="form-control" value="${hc.REC_STS}" name="REC_STS" id="REC_STS"
				placeholder="记录状态">
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
