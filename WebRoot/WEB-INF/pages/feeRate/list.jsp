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
			'href'				: 'addFeeRate',
			'autoScale'			: false,
			'transitionIn'		: 'none',
			'transitionOut'		: 'none',
			'type'				: 'iframe',
			'hideOnOverlayClick':false
		});
   }
   
   function delet(id){
	  if (confirm("are you sure?")){
		  window.location.href="deleteFeeRate?id="+id;
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
                  <th>货币码</th>
                  <th>费率代码</th>
                  <th>收费大类</th>
                  <th>收费细类</th>
                  <th>启用日期</th>
                  <th>收费码</th>
                  <th>收费名称</th>
                  <th>凭证代码</th>
                  <th>凭证名称</th>
                 
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${list}"  var="item">
                  <tr>
                      <td>${item.FRT_KEY}</td>
                      <td>${item.CUR_CDE}</td>
                      <td>${item.FRT_CDEs}</td>
                      <td>${item.FRT_KD1}</td>
                      <td>${item.FRT_KD2}</td>
                      <td>${item.EFF_DAT}</td>
                      <td>${item.FRT_CDE}</td>
                      <td>${item.FRT_NAM}</td>
                      <td>${item.DOC_CDE}</td>
                      <td>${item.DOC_NAM}</td>
                      <td>
                        <a href="updateFeeRate?id=${item.FRT_KEY}">update</a> 
                        <a href=# onclick="delet(${item.FRT_KEY})">delete</a> 
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

