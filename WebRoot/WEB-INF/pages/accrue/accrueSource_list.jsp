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
 			'href'				: 'addAccrueSource',
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
			url: "AccrueSourceInfo?id="+id, 
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
                  <th>机构号</th>
                  <th>计提种类</th>
                  <th>来源账号</th>
                  <th>备抵账号</th>
                  <th>备抵来源</th>
                  <th>计提比例</th>
                  <th>处理标志</th>
                  <th>记账日期</th>
                  <th>计算方式</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${list}"  var="item">
                  <tr>
                      <td>${item.id}</td>
                      <td>${item.ope_code}</td>
                      <td>${item.org_code}</td>
                      <td>${item.acc_type}</td>
                      <td>${item.acc_account}</td>
                      <td>${item.bak_account}</td>
                      <td>${item.bak_source}</td>
                      <td>${item.acc_percent}</td>
                      <td>${item.ope_flag}</td>
                      <td>${item.acc_date}</td>
                      <td>${item.opt_type}</td>
                      <td>
                         <a href="updateAccrueSource?id=${item.id}">update</a> 
                          <a href="deleteAccureSource?id=${item.id}">delete</a> 
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

