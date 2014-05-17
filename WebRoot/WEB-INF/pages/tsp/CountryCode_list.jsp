<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName();
%>
<script type="text/javascript">
	function delcfm() {
		if (!confirm("确认要删除吗？")) {
			window.event.returnValue = false;
		}
	}
</script>
<body>
	<h1>国家码表列表</h1>

	<form action="" method="post">

		<table border="1">
			<tr>
				<td>编号</td>
				<td>国家码</td>
				<td>国家名称</td>
				<td>启用日期</td>
				<td>最后更新日期</td>
				<td>更新柜员</td>
				<td>操作</td>
			</tr>

			<c:forEach items="${CountryCodeList}" var="CountryCode">

				<tr>
					<td>${CountryCode.id}</td>
					<td>${CountryCode.country_code}</td>
					<td>${CountryCode.country_name}</td>
					<td><fmt:formatDate value="${CountryCode.start_time}"
							pattern="yyyy-MM-dd" /></td>
					<td><fmt:formatDate value="${CountryCode.last_time}"
							pattern="yyyy-MM-dd" /></td>
					<td>${CountryCode.upt_tlr}</td>
					<td><a
						href="<%=path %>/CountryCode/delete?id=${CountryCode.id}"
						onclick="delcfm()">删除</a> <a
						href="<%=path %>/CountryCode/edit?id=${CountryCode.id}">修改</a></td>
				</tr>
			</c:forEach>
		</table>
	</form>
	<a href="<%=path %>/pifapp/addition">添加</a>
	<a href="javascript:history.go(-1)">返回</a>
</body>
</html>