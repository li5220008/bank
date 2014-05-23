<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@include file="/WEB-INF/pages/header.jsp"%>
    <%@include file="/WEB-INF/pages/main.jsp"%>
    <title></title>
    
    <script type="text/javascript">   
    function insert(){
 	   $.fancybox({
 			'width'				: '76%',
 			'height'			: '80%',
 			'href'				: 'addTranRecord',
 			'autoScale'			: false,
 			'transitionIn'		: 'none',
 			'transitionOut'		: 'none',
 			'type'				: 'iframe',
 			'hideOnOverlayClick':false
 		});
    }
    
    
    function show(id){
    	var str="";
    	$.ajax({ 
			type: "post", 
			url: "TransRecordInfo?id="+id, 
			success: function(data){
				str+='<table align="center">';
				str+='<tr>';
				str+='<td>'+data.id+'</td>';
				str+='<td>'+data.ope_code+'</td>';
				str+='<td>'+data.org_code+'</td>';
				str+='<td>'+data.ope_flag+'</td>';
				str+='<td>'+data.opt_type+'</td>';
				str+='</tr>';
				str+='</table>';
				$(".showinfo").html(str);
			}
			});
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
                  <th>交易代码</th>
                  <th>交易名称</th>
                  <th>交易子码</th>
                  <th>备注</th>
                  <th>交易权限</th>
                  <th>授权原因</th>
                  <th>分录序号</th>
                  <th>借录标志</th>
                  <th>科目代码</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${list}"  var="item">
                  <tr>
                      <td>${item.id}</td>
                      <td>${item.ope_code}</td>
                      <td>${item.trade_code}</td>
                      <td>${item.trade_name}</td>
                      <td>${item.trade_subcode}</td>
                      <td>${item.comment}</td>
                      <td>${item.trade_pen}</td>
                      <td>${item.pen_reason}</td>
                      <td>${item.journal_no}</td>
                      <td>${item.borrow_flag}</td>
                      <td>${item.subject_code}</td>
                      <td>
                         <a href="updateTranRecord?id=${item.id}">update</a> 
                          <a href="deleteTranRecord?id=${item.id}">delete</a> 
                           <a href=# onclick="show(${item.id})">info</a>  
                      </td>
                  </tr>
              </c:forEach>
              </tbody>
                
          </table>
        <a href=# onclick="insert()">add</a>
      </div>
      
      <div class="showinfo"></div>
</body>
</html>

