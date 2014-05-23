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
			'href'				: 'addHolidayCode',
			'autoScale'			: false,
			'transitionIn'		: 'none',
			'transitionOut'		: 'none',
			'type'				: 'iframe',
			'hideOnOverlayClick':false
		});
   }
   
   function delet(id){
	   if(confirm("are you sure?")){
	   window.location.href="deleteHolidayCode?id="+id;
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
                  <th>假日码</th>
                  <th>假日名称</th>
                  <th>日期</th>
                  <th>假日描述</th>
                  <th>所属国家码</th>
                  <th>启用日期</th>
                  <th>最后更新日期</th>
                  <th>更新柜员</th>
                  <th>使用状态</th>
                  <th>记录状态</th>
                 
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${list}"  var="item">
                  <tr>
                      <td>${item.id}</td>
                      <td>${item.holiday_code}</td>
                      <td>${item.holiday_name}</td>
                      <td>${item.date}</td>
                      <td>${item.comment}</td>
                      <td>${item.country_code}</td>
                      <td>${item.start_time}</td>
                      <td>${item.last_time}</td>
                      <td>${item.UPT_TLR}</td>
                      <td>${item.use_status}</td>
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

