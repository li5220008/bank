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
 			'href'				: 'addStatCode',
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
			url: "StatCodeInfo?id="+id, 
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
                  <th>统计分析类别</th>
                  <th>统计分析编号</th>
                  <th>统计分析描述</th>
                  <th>适用科目性质</th>
                  <th>适用损益性质</th>
                  <th>上报外管局大类</th>
                  <th>上报外管局大类</th>
                  <th>上报外管局小类</th>
                  <th>上报外管局细类</th>
                  <th>其中项目码</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${list}"  var="item">
                  <tr>
                      <td>${item.ANC_CDE}</td>
                      <td>${item.ANC_TYP}</td>
                      <td>${item.ANA_NUM}</td>
                      <td>${item.ANC_DCR}</td>
                      <td>${item.GLC_RAG}</td>
                      <td>${item.PLC_RAG}</td>
                      <td>${item.CFB_TYP}</td>
                      <td>${item.CFB_CD1}</td>
                      <td>${item.CFB_CD2}</td>
                      <td>${item.CFB_CD3}</td>
                      <td>${item.ICL_CDE}</td>
                      <td>
                         <a href="updateStatCode?id=${item.ANC_CDE}">update</a> 
                          <a href="deleteStatCode?id=${item.ANC_CDE}">delete</a> 
                           <a href=# onclick="show(${item.ANC_CDE})">info</a>  
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

