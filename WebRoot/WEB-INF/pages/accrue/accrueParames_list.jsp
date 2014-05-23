<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@include file="/WEB-INF/pages/header.jsp"%>
    <%@include file="/WEB-INF/pages/main.jsp"%>
    <title></title>
    <script>

   
   function add(){
	   $.fancybox({
			'width'				: '76%',
			'height'			: '80%',
			'href'				: 'addAccrueParams',
			'autoScale'			: false,
			'transitionIn'		: 'none',
			'transitionOut'		: 'none',
			'type'				: 'iframe',
			'hideOnOverlayClick':false
		});
   }
   
   function delet(id){
	   if(confirm("are you sure?")){
		   window.location.href="deleteAccureParams?id="+id;
	   }
	   
   }
    </script>
</head>
<body>
      <div class="container">
          <table class="table table-hover <%--table-bordered--%> table-responsive">
              <thead>
              <tr>
                  <th>#</th>
                  <th>操作码</th>
                  <th>机构号</th>
                  <th>计提种类</th>
                  <th>计提名称</th>
                  <th>备抵账号</th>
                  <th>计提比例</th>
                  <th>处理标志</th>
                  <th>记账日期</th>
                  <th>记录状态</th>
                 
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${list}"  var="item">
                  <tr>
                      <td>${item.id}</td>
                      <td>${item.ope_code}</td>
                      <td>${item.org_code}</td>
                      <td>${item.acc_type}</td>
                      <td>${item.acc_name}</td>
                      <td>${item.bak_account}</td>
                      <td>${item.acc_percent}</td>
                      <td>${item.ope_flag}</td>
                      <td>${item.count_date}</td>
                      <td>${item.REC_STS}</td>
                      <td>
                        <a href=# onclick="update()">update</a> 
                        <a href=# onclick="delet(${item.id})">delete</a> 
                        <a href=#>info</a> 
                      </td>
                  </tr>
              </c:forEach>
             
              </tbody>
               
          </table>
          <a href=# onclick="add()">add</a> 
      </div>
      
</body>
</html>

